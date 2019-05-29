package com.gf.repository;

import com.gf.entity.PositionES;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import java.util.List;

/**
 * @author wangchenyu  on 2019/5/29 11:48
 */
public interface PositionRepository extends ElasticsearchRepository<PositionES, Integer> {

    List<PositionES> findByPositions(String position);
}
