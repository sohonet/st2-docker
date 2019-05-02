#!/bin/bash

st2ctl reload --register-all
st2ctl restart-component st2auth
