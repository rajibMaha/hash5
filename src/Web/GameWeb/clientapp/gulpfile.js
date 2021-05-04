const { dest } = require('gulp');
const gulp = require('gulp')
const yargs = require('yargs')



gulp.task("copytowwwroot" , () =>{

    
    var arg = yargs.argv || {};
    const spaContentRoot = arg.spaContentRoot || "wwwroot"

    try{
        return gulp.src("build/**")
        .pipe(dest(`../${spaContentRoot}`))

    }catch(ex){
        console.log(ex)
    }

})