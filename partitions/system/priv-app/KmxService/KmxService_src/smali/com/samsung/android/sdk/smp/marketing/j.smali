.class public abstract Lcom/samsung/android/sdk/smp/marketing/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J

.field public static final b:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/j;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    const-string v1, "j"

    if-nez v0, :cond_0

    const-string p0, "db open fail"

    invoke-static {v1, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "checkNotificationCleared. not displayed state. ignore this"

    invoke-static {v1, p1, p0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lc9/b;->D(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lfc/e;->A(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "checkNotificationCleared. notification is visible"

    invoke-static {v1, p1, v2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lp9/a;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v1, v2, v3, p1}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lb9/b;->i:J

    add-long/2addr v2, v4

    const/4 p1, 0x0

    invoke-static {p0, v1, v2, v3, p1}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    goto :goto_0

    :cond_2
    const-string v2, "checkNotificationCleared. notification is cleared. generate click feedback"

    invoke-static {v1, p1, v2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->B(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, p1, v1, v3}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lc9/b;->c()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "fail to clear data. "

    const/4 v1, 0x0

    const-string v2, "j"

    if-eqz p0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "fail to clear data. db open fail"

    goto/16 :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v3, p1}, Lc9/b;->L(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v3, p1}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/sdk/smp/marketing/g;->c:Ljava/lang/String;

    invoke-static {v4}, Lh9/a;->t(Ljava/lang/String;)Lh9/a;

    move-result-object v4

    invoke-virtual {v3, p1}, Lc9/b;->D(Ljava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_2

    if-lez v5, :cond_2

    invoke-virtual {v4, p0, v5}, Lh9/a;->k(Landroid/content/Context;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Lc9/b;->c()V

    return v1

    :cond_2
    :goto_0
    :try_start_3
    new-instance v0, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, p1}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    new-instance v0, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v0, v1, v4, p1}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    new-instance v0, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v0, v1, v4, p1}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    invoke-static {p0, p1}, Lv4/b;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh9/a;->p(Ljava/lang/String;)Z

    invoke-virtual {v3, p1}, Lc9/b;->t(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/j;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "successfully delete all related data"

    invoke-static {v2, p1, p0}, Lj3/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-virtual {v3}, Lc9/b;->c()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Lc9/b;->c()V

    throw p0

    :cond_4
    :goto_1
    const-string p0, "fail to clear data. invalid params"

    :goto_2
    invoke-static {v2, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 12

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, v0, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "card"

    const-string v6, "mid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    :goto_1
    :try_start_3
    const-string v6, "b"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "db error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-static {v4}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_5
    invoke-static {p0, v4}, Lcom/samsung/android/sdk/smp/marketing/j;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5
    :try_end_5
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v5, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, v4}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_6
    invoke-static {p0, v4}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const-string v6, "j"

    const-string v7, "overdated but delete later to send feedback"

    invoke-static {v6, v4, v7}, Lj3/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->e(Landroid/content/Context;)V

    goto :goto_5

    :cond_3
    sget-object v6, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, v4}, Lcom/samsung/android/sdk/smp/marketing/j;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_6

    :cond_5
    :goto_3
    const-string v5, "j"

    const-string v6, "overdated but delete later to send feedback"

    invoke-static {v5, v4, v6}, Lj3/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lfc/e;->D(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_4

    :cond_6
    invoke-static {p0}, Lfc/e;->x(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_4
    invoke-static {p0, v4, v5, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lb9/b;->c:J

    sub-long/2addr v5, v7

    sget-wide v7, Lb9/a;->d:J

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6, v4}, Lc9/b;->T(JLjava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v5

    const-string v6, "j"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fail to delete overdated marketings:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :catch_3
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_1
    move-exception p0

    move-object v3, v4

    :goto_7
    :try_start_7
    invoke-static {v3}, Lc9/b;->d(Landroid/database/Cursor;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 7

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ppmt"

    invoke-static {v0, v1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lc9/b;->L(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete unused resource["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "j"

    invoke-static {v6, v5}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh9/a;->p(Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lc9/b;->c()V

    :cond_4
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 12

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "j"

    const-string v0, "doIncompleteRequest. dbHandler null"

    invoke-static {p0, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-wide v1, Lcom/samsung/android/sdk/smp/marketing/j;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lb9/a;->k:J

    sub-long v1, v3, v1

    cmp-long v1, v5, v1

    if-lez v1, :cond_1

    const-string p0, "j"

    const-string v1, "doIncompleteRequest. execution time is too short"

    invoke-static {p0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_1
    sput-wide v3, Lcom/samsung/android/sdk/smp/marketing/j;->a:J

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, v0, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "card"

    const-string v6, "mid"

    const-string v7, "state"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    :goto_1
    :try_start_3
    const-string v6, "b"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    invoke-static {v4}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v6

    invoke-virtual {v6, v5}, Lg9/b;->H(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, "j"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "doIncompleteRequest. skip "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". It is already running in FcmService"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v6, "Incomplete Request. state:"

    sget-object v7, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_6
    :try_start_5
    const-string v8, "j"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object v6

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->x(Landroid/content/Context;)V

    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->w(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    sget-object v7, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "marketing_sub_action"

    const-string v7, "download_res"

    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lp9/a;

    sget-object v7, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v6, v7, v4, v5}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {p0, v6, v7, v8, v2}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    goto/16 :goto_2

    :cond_8
    sget-object v7, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->x(Landroid/content/Context;)V

    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->v(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/sdk/smp/marketing/g;->n()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_4

    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->e(Landroid/content/Context;)V
    :try_end_5
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v6, "fail_due_to_do_not_disturb_time"

    goto :goto_4

    :catch_3
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_4
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_5
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_3
    invoke-static {p0, v5, v4, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_6
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v6, "dberror"

    :goto_4
    invoke-static {p0, v5, v4, v6}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_1
    move-exception p0

    move-object v3, v4

    :goto_5
    :try_start_6
    invoke-static {v3}, Lc9/b;->d(Landroid/database/Cursor;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "j"

    const-string v1, "finish real time marketing"

    invoke-static {v0, p1, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lva/n;->I(Landroid/content/Context;)V

    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v0

    invoke-virtual {v0}, Lg9/b;->F()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "j"

    const-string v2, "multiple real-time marketings are running. do not cancel FCM_SERVICE_COMPLEMENTARY_EVENT alarm"

    invoke-static {v1, p1, v2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lp9/c;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->FCM_SERVICE_COMPLEMENTARY_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, v1}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    :goto_0
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v1, "fcm_service_retry_count"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Le9/b;->t(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p1}, Le9/b;->D(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;
    .locals 5

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/g;

    if-nez v0, :cond_1

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "card"

    const-string v2, "msgtype"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, p1, v3}, Lc9/b;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v2, "card"

    const-string v3, "data"

    const-string v4, ""

    invoke-virtual {v0, v2, v3, p1, v4}, Lc9/b;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    invoke-virtual {v0, p1}, Lc9/b;->D(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/j;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Lc9/b;->c()V

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0

    :cond_0
    const-string p0, "j"

    const-string v0, "db open fail"

    invoke-static {p0, p1, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-wide v1, v0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->C(Landroid/content/Context;)V

    :cond_2
    return-object v0

    :cond_3
    const-string p0, "j"

    const-string v0, "fail to get marketing. invalid params"

    invoke-static {p0, p1, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/g;
    .locals 3

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Ll9/b;->u0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p2

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p3, "expdt"

    invoke-virtual {v0, p3, p1}, Lc9/b;->C(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    iput-wide p3, p2, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-gtz p3, :cond_0

    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->C(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/j;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lc9/b;->c()V

    return-object p2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0

    :cond_1
    const-string p0, "j"

    const-string p1, "db open fail"

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "j"

    const-string p2, "fail to get marketing. invalid params"

    invoke-static {p0, p1, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static i(Landroid/content/Context;Z)V
    .locals 12

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "j"

    const-string v0, "handleDisplayedMarketingsWhenBootOrUpdate. dbHandler null"

    invoke-static {p1, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, v0, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "card"

    const-string v6, "mid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "mdt>=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "b"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "db error. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    invoke-static {v3}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->B(Landroid/content/Context;Ljava/lang/String;Z)V

    :try_start_4
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object v4

    iget-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v6, "local"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-wide v5, v4, Lcom/samsung/android/sdk/smp/marketing/g;->l:J

    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v5

    goto :goto_2

    :cond_3
    iget-wide v5, v4, Lcom/samsung/android/sdk/smp/marketing/g;->l:J

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/g;->n()J

    move-result-wide v4

    goto :goto_3

    :cond_4
    iget-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v6, "local"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-wide v4, v4, Lcom/samsung/android/sdk/smp/marketing/g;->l:J

    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    iget-wide v4, v4, Lcom/samsung/android/sdk/smp/marketing/g;->l:J

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    if-eqz p1, :cond_6

    const-string v4, "reboot"

    goto :goto_4

    :cond_6
    const-string v4, "app_update"

    :goto_4
    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->SYSTEM_EVENT_RECEIVED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, v3, v5, v4}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "j"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleDisplayedMarketingsWhenBootOrUpdate. error while parsing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lc9/b;->c()V

    :goto_5
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->d(Landroid/content/Context;)V

    return-void

    :goto_6
    :try_start_5
    invoke-static {v3}, Lc9/b;->d(Landroid/database/Cursor;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static j(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    const-string v1, "j"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fail to handle message. db error. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "dberror"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    if-eqz v0, :cond_1

    const-string p0, "fail to handle message. internal error"

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    if-eqz v0, :cond_2

    const-string p0, "fail to handle message. not supported type"

    invoke-static {v1, p2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :cond_2
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    if-eqz v0, :cond_3

    const-string p0, "fail to handle message. wrong meta data"

    invoke-static {v1, p2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :cond_3
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException;

    if-eqz v0, :cond_4

    const-string p0, "fail to handle message. display not available due to do not disturb time"

    invoke-static {v1, p2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "fail_due_to_do_not_disturb_time"

    :goto_0
    invoke-static {p1, p2, p0, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    instance-of p0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidReferrerException;

    if-eqz p0, :cond_5

    const-string p0, "fail to handle message. invalid referrer"

    invoke-static {v1, p2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->REFERRER_VALIDATION_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :cond_5
    const-string p0, "fail to handle message. unknown exception"

    :goto_1
    invoke-static {v1, p2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_3
    return-void
.end method

.method public static k(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget v0, Ll9/b;->a:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "b"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p2, "appdata is null"

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mid"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userdata"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lp1/v;

    const/16 v5, 0x11

    invoke-direct {v4, p2, v3, v0, v5}, Lp1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "invalid appdata. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {v1, p2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    :goto_1
    if-nez v4, :cond_1

    const-string p0, "j"

    const-string p1, "fail to handle message. invalid data"

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p2

    invoke-virtual {p2}, Lf9/c;->J()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Lp1/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "fcm"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_2

    goto/16 :goto_3

    :cond_2
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Ll9/b;->v0(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/k;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->a:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->b:J

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->b:J

    iget-wide v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->c:J

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->c:J

    goto :goto_2

    :cond_3
    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->d:Landroidx/core/view/s;

    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Landroidx/core/view/s;)Landroidx/core/view/s;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->d:Landroidx/core/view/s;

    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->e:Landroidx/core/view/s;

    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Landroidx/core/view/s;)Landroidx/core/view/s;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/k;->e:Landroidx/core/view/s;

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p2, Lcom/samsung/android/sdk/smp/marketing/k;->b:J

    cmp-long v5, v0, v5

    if-ltz v5, :cond_6

    iget-wide v5, p2, Lcom/samsung/android/sdk/smp/marketing/k;->c:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, p2, Lcom/samsung/android/sdk/smp/marketing/k;->d:Landroidx/core/view/s;

    iget-object v6, p2, Lcom/samsung/android/sdk/smp/marketing/k;->e:Landroidx/core/view/s;

    iget-object v7, p2, Lcom/samsung/android/sdk/smp/marketing/k;->f:Landroidx/core/view/s;

    iget-object p2, p2, Lcom/samsung/android/sdk/smp/marketing/k;->g:Landroidx/core/view/s;

    invoke-static {v7, p2, v0, v1}, Lkotlin/jvm/internal/m;->m(Landroidx/core/view/s;Landroidx/core/view/s;J)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v5, v6, v0, v1}, Lkotlin/jvm/internal/m;->m(Landroidx/core/view/s;Landroidx/core/view/s;J)Z

    move-result p2

    goto :goto_4

    :catch_1
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check realtime marketing fail : parsing error. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "j"

    invoke-static {v0, p2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    move p2, v3

    :goto_4
    const-string v0, "j"

    iget-object v1, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "real time marketing : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    iget-object v0, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "j"

    const-string v5, "start real time marketing"

    invoke-static {v1, v0, v5}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1, v0}, Le9/b;->z(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    const-string v1, "fcm_service_retry_count"

    invoke-virtual {v0, v3, v1}, Le9/b;->t(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    new-instance v0, Lp9/c;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->FCM_SERVICE_COMPLEMENTARY_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v1, v2}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v5, Lb9/a;->i:J

    add-long/2addr v1, v5

    invoke-static {p1, v0, v1, v2, v3}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_7
    :goto_5
    :try_start_4
    iget-object v0, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lp1/v;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/j;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v1, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DELIVER:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p0}, Li4/g;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, v2, p0}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v2, "deliver"

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mid"

    iget-object v2, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_type"

    iget-object v2, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userdata"

    iget-object v2, v4, Lp1/v;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display_id"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v2, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V
    :try_end_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_8
    if-eqz p2, :cond_9

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    :try_start_5
    iget-object v0, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/j;->j(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p2, :cond_9

    :goto_6
    iget-object p0, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/j;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    return-void

    :goto_7
    if-eqz p2, :cond_a

    iget-object p2, v4, Lp1/v;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/j;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    throw p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    const-string v4, "j"

    if-nez v0, :cond_1

    const-string p0, "fail to insert marketing. invalid mid"

    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "fail to insert marketing. db open fail"

    invoke-static {v4, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    :try_start_0
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/g;->G:[I

    const-string v5, "test"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v1

    :goto_2
    if-nez v5, :cond_5

    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->FAILED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p1}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "fail to delete previous marketing"

    invoke-static {v4, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lc9/b;->c()V

    return v3

    :cond_6
    :try_start_1
    invoke-virtual {v0, p1}, Lc9/b;->L(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "already have the same marketing"

    invoke-static {v4, p1, p0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lc9/b;->c()V

    return v3

    :cond_7
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v3, 0x14

    if-gt p0, v3, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v3, 0x2800

    if-gt p0, v3, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v0, p1, p3, p2}, Lc9/b;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lc9/b;->c()V

    return p0

    :cond_9
    const/4 p0, 0x0

    :try_start_3
    invoke-virtual {v0, p1, p0, p0}, Lc9/b;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "mrt"

    invoke-virtual {v0, v1, p1}, Lc9/b;->C(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    :try_start_3
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p0

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v3, "local"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->j:J

    invoke-static {p0, p1}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-wide p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->j:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    cmp-long v3, p0, v1

    if-lez v3, :cond_1

    move-wide v1, p0

    :catch_0
    :cond_1
    :try_start_4
    sget-wide p0, Lb9/b;->c:J

    add-long/2addr v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long p0, p0, v1

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0}, Lc9/b;->c()V

    return p0

    :cond_3
    :try_start_5
    const-string p0, "j"

    const-string v1, "fail to get marketing received time"

    invoke-static {p0, p1, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0

    :cond_4
    const-string p0, "j"

    const-string v0, "db open fail"

    invoke-static {p0, p1, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    :cond_5
    const-string p0, "j"

    const-string v0, "invalid params"

    invoke-static {p0, p1, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static n(Landroid/content/Context;)J
    .locals 13

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "db error. "

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "card"

    const-string v6, "mid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "state=? OR state=? OR state=? OR state=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "b"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v3}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    invoke-virtual {p0}, Lc9/b;->c()V

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-static {v3}, Lc9/b;->d(Landroid/database/Cursor;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_2
    return-wide v0
.end method
