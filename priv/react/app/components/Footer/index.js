import React from 'react';
import { FormattedMessage } from 'react-intl';

import Wrapper from './Wrapper';
import messages from './messages';

function Footer() {
  return (
    <Wrapper>
      <FormattedMessage {...messages.wineQuoteMessage} />
    </Wrapper>
  );
}

export default Footer;
