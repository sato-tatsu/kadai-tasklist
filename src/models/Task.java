package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries(
        {
            @NamedQuery(
                    name = "getAllTasks",
                    query = "select m from Task as m order by m.id DESC"
            )
        }
)
@Table(name = "tasks")
public class Task {

    // テーブルカラム
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "content", length = 255, nullable = false)
    private String content;

    @Column(name = "create_time", nullable = false)
    private Timestamp create_time;

    @Column(name = "update_time", nullable = false)
    private Timestamp update_time;


    // セッターとゲッター
    // id
    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    // content
    public String getContent()
    {
        return content;
    }

    public void setContent(String content)
    {
        this.content = content;
    }

    // create_time
    public Timestamp getCreate_time()
    {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time)
    {
        this.create_time = create_time;
    }

    // update_time
    public Timestamp getUpdate_time()
    {
        return update_time;
    }

    public void setUpdate_time(Timestamp update_time)
    {
        this.update_time = update_time;
    }
}
