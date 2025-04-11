.class public final Lj9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lj9/a;->a:Ljava/lang/String;

    iput-wide p1, p0, Lj9/a;->b:J

    iput-boolean p4, p0, Lj9/a;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lj9/a;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj9/a;->a:Ljava/lang/String;

    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lj9/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "a"

    const-string p1, "Fail to handle display success. dbHandler null"

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lj9/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, v1, v2}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    iget-object v1, p0, Lj9/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    iget-object p2, p0, Lj9/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    monitor-enter v0

    :try_start_0
    const-string v3, "mdt"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p2}, Lc9/b;->R(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v0}, Lc9/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lj9/a;->b:J

    iget-object p2, p0, Lj9/a;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gez v2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Fail to set clear alarm. Invalid clearTime : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "a"

    invoke-static {v0, p2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lp9/a;

    sget-object v5, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v2, v5, v4, p2}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v1, v3}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    :goto_1
    iget-object p0, p0, Lj9/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lfc/e;->r(Landroid/content/Context;)I

    move-result p2

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_5

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p2

    const-string v0, "a"

    if-nez p2, :cond_3

    const-string p1, "db open fail"

    invoke-static {v0, p0, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p0}, Lc9/b;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "landing is redirected. skip to set check notification cleared alarm"

    invoke-static {v0, p0, p1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lc9/b;->c()V

    new-instance p2, Lp9/a;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p2, v0, v4, p0}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lb9/b;->h:J

    add-long/2addr v0, v4

    invoke-static {p1, p2, v0, v1, v3}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    :cond_5
    :goto_2
    return-void
.end method
