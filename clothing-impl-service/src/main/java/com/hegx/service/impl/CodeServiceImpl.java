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

    @Override
    public Integer doTotalcount(Code code) {

        Integer totalCount = 0;

        if (code.getMl()!=null)
        {
            totalCount+=code.getMl();
        }
        if (code.getMxxxl()!=null)
        {
            totalCount+=code.getMxxxl();
        }
        if (code.getMxxl()!=null)
        {
            totalCount+=code.getMxxl();
        }
        if (code.getMxs()!=null)
        {
            totalCount+=code.getMxs();
        }
        if (code.getMm()!=null)
        {
            totalCount+=code.getMm();
        }
        if (code.getMs()!=null)
        {
            totalCount+=code.getMs();
        }
        if (code.getMxl()!=null)
        {
            totalCount+=code.getMxl();
        }

        return totalCount;
    }
}
