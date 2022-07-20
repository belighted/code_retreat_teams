import React from 'react';
import { Route, Switch } from 'react-router-dom';

import NewParticipation from '../pages/participation/new';
import NewSession from '../pages/session/new';
import ShowSession from '../pages/session/show';

// # MAIN
export class Routes extends React.Component {
  render = () => {
    return (
      <div >
        <Switch>
          <Route exact path='/session-show' component={NewParticipation}/>
          <Route exact path='/session-new' component={NewSession}/>
          <Route exact path='/session-show' component={ShowSession}/>
        </Switch>
      </div>
    );
  }
};