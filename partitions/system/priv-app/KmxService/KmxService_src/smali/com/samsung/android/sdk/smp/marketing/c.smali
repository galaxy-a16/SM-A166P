.class public abstract Lcom/samsung/android/sdk/smp/marketing/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/c;->a:Ljava/util/HashSet;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "==== << "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " >> ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v1, p1, v0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "fail to add feedback. db open fail."

    :goto_0
    invoke-static {v1, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/c;->d(Lc9/b;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Lc9/b;->b(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/b;->a:[I

    invoke-static {p0, p2, p1}, Lcom/samsung/android/sdk/smp/marketing/c;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lva/n;->Q(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lva/n;->P(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0

    :cond_6
    :goto_2
    const-string p0, "fail to add feedback. invalid params"

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "c"

    const-string v0, "db open fail"

    invoke-static {p0, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "externalfeedback"

    const-string v1, "countExternalFeedbackData"

    invoke-virtual {p0, v0, v1}, Lc9/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p0}, Lc9/b;->c()V

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_1:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_2:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_3:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "c"

    if-eqz v0, :cond_2

    const-string p0, "user action fbid. upload type: UPLOAD_NOW_IN_SMP_SERVICE"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->UPLOAD_NOW_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg9/b;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p1, v0, :cond_3

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->c:Ljava/lang/String;

    const-string p1, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "popup and fbid is CONSUMED. upload type: UPLOAD_NOW_IN_SMP_SERVICE"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->UPLOAD_NOW_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_3
    const-string p0, "running in fcm service. upload type: SKIP_NOW_AND_UPLOAD_LATER_IN_FCM_SERVICE"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->SKIP_NOW_AND_UPLOAD_LATER_IN_FCM_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p1, v0, :cond_5

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->q:I

    if-lez p0, :cond_5

    const-string p0, "random is over 0 and fbid is CONSUMED. upload type: UPLOAD_NOW_IN_SMP_SERVICE"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->UPLOAD_NOW_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_5
    const-string p0, "upload type: DISPERSION_IN_SMP_SERVICE"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->DISPERSION_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "default upload type: DISPERSION_IN_SMP_SERVICE"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->DISPERSION_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0
.end method

.method public static d(Lc9/b;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "error while handling feedback."

    const-string v1, "feedback"

    const-string v2, "lfbid"

    invoke-virtual {p0, v1, v2, p1, v0}, Lc9/b;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_0
    monitor-exit p0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_1:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_2:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_3:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->SYSTEM_EVENT_RECEIVED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_DEBUG:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    const-string p0, "c"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "the feedback "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is already added"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_3
    const-string p2, "app_update"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    monitor-enter p0

    :try_start_1
    const-string p2, "feedback"

    const-string v0, "appupdateadded"

    const-string v3, ""

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p2, v0, p1, v3}, Lc9/b;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, p2, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    move p2, v1

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    if-eqz p2, :cond_5

    const-string p0, "c"

    const-string p2, "app update feedback is already added"

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    const-string p2, "reboot"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    monitor-enter p0

    :try_start_5
    const-string p2, "feedback"

    const-string p3, "rebootadded"

    const-string v0, ""

    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {p0, p2, p3, p1, v0}, Lc9/b;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v2, p2, :cond_6

    move p2, v2

    goto :goto_4

    :cond_6
    move p2, v1

    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    if-eqz p2, :cond_7

    const-string p0, "c"

    const-string p2, "reboot feedback is already added"

    :goto_5
    invoke-static {p0, p1, p2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_2
    move-exception p1

    :try_start_8
    monitor-exit p0

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_7
    return v2

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static e(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v1, p0

    if-nez v1, :cond_0

    const-string v0, "c"

    const-string v1, "send external feedbacks fail. context null"

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "c"

    const-string v1, "db open fail"

    :goto_0
    invoke-static {v0, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, v2, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "externalfeedback"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "path"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "fail"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    const-string v6, "timestamp"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    new-instance v6, Ld9/b;

    invoke-direct {v6, v0}, Ld9/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v5, v4

    :goto_2
    :try_start_3
    const-string v6, "b"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get external feedback error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :cond_2
    :try_start_4
    invoke-static {v5}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    monitor-exit v2

    const/4 v5, 0x0

    move v0, v5

    move v6, v0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x5

    if-ge v6, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld9/b;

    iget-object v7, v7, Ld9/b;->a:Ljava/lang/String;

    new-instance v10, Lcom/samsung/android/sdk/smp/marketing/a;

    invoke-direct {v10, v7, v5}, Lcom/samsung/android/sdk/smp/marketing/a;-><init>(Ljava/lang/String;I)V

    const/16 v11, 0x3c

    invoke-static {v1, v10, v11}, Lcom/samsung/android/sdk/smp/common/network/d;->i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;

    move-result-object v10

    iget-boolean v11, v10, Lb0/a;->a:Z

    if-eqz v11, :cond_3

    goto :goto_4

    :cond_3
    iget v10, v10, Lb0/a;->b:I

    const/16 v11, 0x190

    if-lt v10, v11, :cond_4

    const/16 v11, 0x1f4

    if-ge v10, v11, :cond_4

    :goto_4
    invoke-virtual {v2, v7}, Lc9/b;->r(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_4
    const-string v10, "error while handling external feedback."

    monitor-enter v2

    :try_start_5
    iget-object v11, v2, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "externalfeedback"

    const-string v0, "fail"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "path=?"

    new-array v15, v8, [Ljava/lang/String;

    aput-object v7, v15, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {v11}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v11, v4

    :goto_5
    :try_start_8
    const-string v12, "b"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_5
    :try_start_9
    invoke-static {v11}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit v2

    const/4 v0, -0x1

    :goto_6
    add-int/lit8 v10, v0, 0x1

    const-string v11, "error while handling external feedback. "

    monitor-enter v2

    :try_start_a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "fail"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v12, v2, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "externalfeedback"

    const-string v14, "path = ?"

    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v5

    invoke-virtual {v12, v13, v0, v14, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    :try_start_b
    const-string v8, "b"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_7
    monitor-exit v2

    if-le v10, v9, :cond_6

    invoke-virtual {v2, v7}, Lc9/b;->r(Ljava/lang/String;)V

    :cond_6
    move v0, v10

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :goto_9
    monitor-exit v2

    throw v0

    :catchall_3
    move-exception v0

    move-object v4, v11

    :goto_a
    :try_start_c
    invoke-static {v4}, Lc9/b;->d(Landroid/database/Cursor;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_7
    if-lez v0, :cond_9

    if-gt v0, v9, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x3

    if-gt v0, v3, :cond_8

    sget-wide v9, Lb9/b;->f:J

    goto :goto_b

    :cond_8
    sget-wide v9, Lb9/b;->g:J

    :goto_b
    add-long/2addr v5, v9

    new-instance v0, Lp9/c;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v3, v4}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {v1, v0, v5, v6, v8}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    :cond_9
    invoke-virtual {v2}, Lc9/b;->c()V

    return-void

    :catchall_5
    move-exception v0

    move-object v4, v5

    :goto_c
    :try_start_d
    invoke-static {v4}, Lc9/b;->d(Landroid/database/Cursor;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    monitor-exit v2

    throw v0
.end method
