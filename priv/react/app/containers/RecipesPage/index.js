/*
 * RecipesPage
 *
 * List all the recipes
 */
import React from 'react';
import Helmet from 'react-helmet';
import { FormattedMessage } from 'react-intl';

import H1 from 'components/H1';
import H3 from 'components/H3';
import messages from './messages';

export default class RecipesPage extends React.Component { // eslint-disable-line react/prefer-stateless-function

  // Since state and props are static,
  // there's no need to re-render this component
  shouldComponentUpdate() {
    return false;
  }

  render() {
    return (
      <div>
        <Helmet
          title="Absinthepedia 🍹"
          meta={[
            { name: 'description', content: 'Absinthepedia 🍹' },
          ]}
        />
        <H1>
          <FormattedMessage {...messages.header} />
        </H1>
        <H3>
          TODO: Use <i>relay</i> to fetch recipes!
        </H3>
      </div>
    );
  }
}
