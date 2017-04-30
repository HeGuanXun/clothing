package com.hegx.service.impl;

import com.hegx.base.dao.BaseDao;
import com.hegx.base.service.impl.BaseServiceImpl;
import com.hegx.dao.BelongDao;
import com.hegx.po.Belong;
import com.hegx.service.BelongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/4/30 0030.
 */
@Service
public class BelongServiceImpl extends BaseServiceImpl<Belong> implements BelongService {

    @Autowired
    private BelongDao belongDao;

    @Override
    protected BaseDao<Belong> getBaseDao() {
        return this.belongDao;
    }
}
