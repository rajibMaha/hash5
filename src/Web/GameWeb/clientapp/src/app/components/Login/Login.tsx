import React from 'react';
import Avatar from '@material-ui/core/Avatar';
import Button from '@material-ui/core/Button';
import CssBaseline from '@material-ui/core/CssBaseline';
import TextField from '@material-ui/core/TextField';
import FormControlLabel from '@material-ui/core/FormControlLabel';
import Checkbox from '@material-ui/core/Checkbox';
import Link from '@material-ui/core/Link';
import Grid from '@material-ui/core/Grid';
import Box from '@material-ui/core/Box';
import LockOutlinedIcon from '@material-ui/icons/LockOutlined';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import Container from '@material-ui/core/Container'
import { Copyright } from '@material-ui/icons';
import LoginStyle from './LoginStyle';
import {LoginUser ,IsUserLoggedIn} from "./LoginService"
import { useHistory } from "react-router-dom";

const  Login = () => {
  const classes = LoginStyle(); 
  
 const [UserPassword,SetUserPassword] = React.useState<string>("");
 const [UserName,SetUserName] = React.useState<string>("");

 const history = useHistory();

  const handleLogin = () => {

    if(LoginUser(UserName , UserPassword)){
      history.push(`/Home`);
    }
  }

  if(IsUserLoggedIn()){
    history.push(`/Home`);
  }

    return (
      <Container component="main" maxWidth="xs">
        <CssBaseline />
        <div className={classes.paper}>
          <Avatar className={classes.avatar}>
            <LockOutlinedIcon />
          </Avatar>
          <Typography component="h1" variant="h5">
            Sign In
          </Typography>
          <form className={classes.form} noValidate onSubmit={handleLogin}>
            <Grid container spacing={2}>
              
              <Grid item xs={12}>
                <TextField
                  variant="outlined"
                  required
                  fullWidth
                  id="email"
                  label="User ID"
                  name="userId"
                  value= {UserName}
                  onChange ={(e) => SetUserName(e.target.value) }
                  
                /> 
              </Grid>
              <Grid item xs={12}>
                <TextField
                  variant="outlined"
                  required
                  fullWidth
                  name="password"
                  label="Password"
                  type="password"
                  id="password"
                  value= {UserPassword}
                  onChange ={(e) => SetUserPassword(e.target.value) }
                />
              </Grid>
              
            </Grid>
            <Button
              type="submit"
              fullWidth
              variant="contained"
              color="primary"
              className={classes.submit}
            >
              Sign In
            </Button>
            
          </form>
        </div>
        
      </Container>
  );
}

export default Login;
