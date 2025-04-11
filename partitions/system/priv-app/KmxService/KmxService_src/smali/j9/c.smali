.class public final Lj9/c;
.super Lh9/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Landroid/content/Context;I)Z
    .locals 3

    invoke-static {p1}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v0, "popup_current_display_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Le9/b;->d(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    if-ne v0, p2, :cond_0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_clear"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, La9/e;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "fail to clear:"

    const-string v0, ". "

    invoke-static {p1, p2, v0}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "c"

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final q(Landroid/content/Context;Landroid/os/Bundle;Lj9/a;)V
    .locals 8

    const-string v0, "c"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p0, "fail to display. data null"

    invoke-static {v0, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lh9/a;->B(Landroid/os/Bundle;)V

    const-string v2, "mid"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "template_type"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v6, :cond_1

    const/4 v7, 0x4

    if-gt v3, v7, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    if-nez v7, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "not supported type. type:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_1
    invoke-virtual {p3, p1, p0, v1}, Lj9/a;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "disturb"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lfc/e;->a:I

    if-eqz p1, :cond_3

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    :cond_3
    if-eqz v6, :cond_6

    const-string p0, "delay display not to disturb"

    invoke-static {v0, v2, p0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p2, p3, Lj9/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lc9/b;->E(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p3, Lj9/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc9/b;->S(ILjava/lang/String;)V

    invoke-virtual {p0}, Lc9/b;->c()V

    const/4 p0, 0x5

    if-lt p2, p0, :cond_4

    const-string p0, "fail to display. currently busy"

    invoke-static {v0, v3, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->BUSY:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p3, p1, p0, v1}, Lj9/a;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "marketing_sub_action"

    const-string v0, "display"

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "is_first_display"

    iget-boolean p3, p3, Lj9/a;->c:Z

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lp9/a;

    sget-object p3, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p2, p3, p0, v3}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lb9/b;->e:J

    add-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1, v5}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-static {p1}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string v5, "popup_current_display_id"

    invoke-virtual {v3, v4, v5}, Le9/b;->d(ILjava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eq v5, v4, :cond_7

    invoke-virtual {p0, p1, v5}, Lj9/c;->k(Landroid/content/Context;I)Z

    :cond_7
    :try_start_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v3, "extra_popup"

    invoke-virtual {p0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "extra_is_first_display"

    iget-boolean v5, p3, Lj9/a;->c:Z

    invoke-virtual {p0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_clear_time"

    iget-wide v5, p3, Lj9/a;->b:J

    invoke-virtual {p0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "channel_type"

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lh9/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "extra_channel_id"

    invoke-virtual {p0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v3, La9/e;

    invoke-virtual {p0, p2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "fail to display. "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_1
    const-string p0, "fail to display. channel not created"

    invoke-static {v0, v2, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_3
    invoke-virtual {p3, p1, p0, v1}, Lj9/a;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method
