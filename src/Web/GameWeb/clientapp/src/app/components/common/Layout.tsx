// import * as React from 'react';
// import { Container } from 'reactstrap';


// const header =  (

// );

// export default (props: { children?: React.ReactNode }) => (
//     <React.Fragment>
//         <div>

//             <Container>
//                 {props.children}
//             </Container>

//         </div>
//     </React.Fragment>
// );



import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import { Container } from 'reactstrap';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import Button from '@material-ui/core/Button';
import IconButton from '@material-ui/core/IconButton';
import MenuIcon from '@material-ui/icons/Menu';
import LayoutStyle  from './LayoutStyle';
import { Redirect } from 'react-router-dom';
import HomeIcon from '@material-ui/icons/Home';
import { useHistory } from "react-router-dom";

const Layout = (props: { children?: React.ReactNode }) => {
    const history = useHistory();
    const classes = LayoutStyle();
    const [ToLogin, SetToLogin] = React.useState<boolean>(false);
    const [ToHome, SetToHome] = React.useState<boolean>(false);

    const handleRedirect = (route: string) => {
        history.push(`/${route}`);
    }
    return (
        <div className={classes.root}>
            <AppBar position="static">
                <Toolbar>
                    <IconButton edge="start" className={classes.menuButton} color="inherit" aria-label="menu" onClick={() => handleRedirect('Home')}>
                        <HomeIcon />
                    </IconButton>
                    <Typography variant="h6" className={classes.title}>
                        Home
                         </Typography>
                    <Button color="inherit" onClick={() => handleRedirect('Login')}>Login</Button>
                </Toolbar>
            </AppBar>

            <Container >
                {props.children}
            </Container>
        </div>
    );
}

export default Layout;
