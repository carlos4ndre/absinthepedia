import React from 'react';
import { shallow } from 'enzyme';
import { FormattedMessage } from 'react-intl';

import H1 from 'components/H1';
import messages from '../messages';
import RecipesPage from '../index';

describe('<RecipesPage />', () => {
  it('should render its heading', () => {
    const renderedComponent = shallow(
      <RecipesPage />
    );
    expect(renderedComponent.contains(
      <H1>
        <FormattedMessage {...messages.header} />
      </H1>
    )).toBe(true);
  });
});
