package com.hegx.service.impl;

import com.hegx.base.dao.BaseDao;
import com.hegx.base.service.impl.BaseServiceImpl;
import com.hegx.dao.CodeDao;
import com.hegx.po.Code;
import com.hegx.service.CodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by hegx on 2017/4/24.
 */
@Service
public class CodeServiceImpl extends BaseServiceImpl<Code> implements CodeService {

    @Autowired
    private CodeDao codeDao;
    @Override
    protected BaseDao<Code> getBaseDao() {
        return this.codeDao;
    }
}
