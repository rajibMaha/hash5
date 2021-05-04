using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
//using RforU.DistributedPackage.Configuration.AppConfig;

//swagger use swaggerBucket.aspnet > donot use swaggerBucket.aspnet.swagger 

namespace RforU.DistributedPackage.MiddleWare
{
    public static class RforUDistPackageMiddleWareExtension
    {
        //UseRforUCommonMiddleWare 
        // private static IHelpers _helpers;
        public static IApplicationBuilder UseRforUDistPackageMiddleWare(this IApplicationBuilder app, Action<RforUDistributedPackageOptions> optionsAction)
        {
            #region Get Option Values
            RforUDistributedPackageOptions option = new RforUDistributedPackageOptions();
            if (optionsAction != null)
                optionsAction.Invoke(option);
            RforUDistributedPackageSetting.Option = option; 
            #endregion

            app.UseSwagger().UseSwaggerUI(c =>
                c.SwaggerEndpoint("/swagger/v1/swagger.json", option.AppName ?? DistPackageConstants.PackageName)
           );

            return app.UseMiddleware<RforUDistributedPackageMiddleWare>();

        }
        public static IServiceCollection AddRforUDistPackageMiddleWare(this IServiceCollection service)
        {
            service.AddSwaggerGen();
            service.AddHttpContextAccessor();
            service.AddAntiforgery(options => options.HeaderName = "X-XSRF-TOKEN");
            RegisterServices.Register(ref service);
            return service;
        }


        //public static IApplicationBuilder UseDIMiddleWare(this IApplicationBuilder builder)
        //{
        //    return builder.UseMiddleware<DIMiddleWare>();
        //}

        //public static IServiceCollection AddDIMiddleWare(this IServiceCollection service)
        //{

        //    RegisterService.Register(ref service);
        //    return service;
        //}



    }


}
