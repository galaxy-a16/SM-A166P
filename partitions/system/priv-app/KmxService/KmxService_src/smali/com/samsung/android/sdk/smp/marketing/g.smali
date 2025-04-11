.class public abstract Lcom/samsung/android/sdk/smp/marketing/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final G:[I

.field public static final H:J

.field public static final I:[J


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public final E:I

.field public F:Z

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Lorg/json/JSONObject;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Lorg/json/JSONObject;

.field public u:J

.field public v:I

.field public w:Landroidx/activity/result/l;

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/sdk/smp/marketing/g;->G:[I

    sget-wide v1, Lb9/a;->c:J

    sput-wide v1, Lcom/samsung/android/sdk/smp/marketing/g;->H:J

    new-array v0, v0, [J

    sget-wide v1, Lb9/a;->b:J

    const-wide/16 v3, 0x5

    mul-long/2addr v3, v1

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    const-wide/16 v3, 0xa

    mul-long/2addr v3, v1

    const/4 v5, 0x1

    aput-wide v3, v0, v5

    const-wide/16 v3, 0xf

    mul-long/2addr v1, v3

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/g;->I:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/marketing/g;->c:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->E:I

    return-void
.end method

.method public static A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Fail to change to [fail] - current state : "

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v1

    const-string v2, "g"

    if-nez v1, :cond_0

    const-string p0, "db open fail"

    invoke-static {v2, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lc9/b;->L(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, p1}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    const-string p2, ""

    :goto_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lc9/b;->c()V

    return-void

    :cond_4
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->FAILED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, p1, v0}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lv4/b;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh9/a;->p(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-virtual {v1}, Lc9/b;->c()V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lc9/b;->c()V

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method public static B(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "g"

    const-string p2, "Fail to change to [gone] - db open fail"

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->GONE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_2
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "g"

    const-string p2, "Fail to change to [gone] - not displayed/incomp_api"

    invoke-static {p0, p1, p2}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string p2, "mct"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p1}, Lc9/b;->R(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {v0, p1, v2}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    invoke-static {p0, p1}, Lv4/b;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lh9/a;->p(Ljava/lang/String;)Z

    new-instance p2, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, p1}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    new-instance p2, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p2, v1, v2, p1}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0

    :cond_5
    :goto_1
    const-string p0, "g"

    const-string p2, "Fail to change to [gone] - invalid params"

    :goto_2
    invoke-static {p0, p1, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/g;
    .locals 1

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "invalid marketingtype : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "g"

    invoke-static {p2, p0, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final C(Landroid/content/Context;)V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->l()Landroidx/core/view/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->k()Landroidx/core/view/s;

    move-result-object v2

    new-instance v3, Landroidx/core/view/s;

    iget v4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->m:I

    iget v5, p0, Lcom/samsung/android/sdk/smp/marketing/g;->o:I

    invoke-direct {v3, v4, v5}, Landroidx/core/view/s;-><init>(II)V

    new-instance v4, Landroidx/core/view/s;

    iget v5, p0, Lcom/samsung/android/sdk/smp/marketing/g;->n:I

    iget v6, p0, Lcom/samsung/android/sdk/smp/marketing/g;->p:I

    invoke-direct {v4, v5, v6}, Landroidx/core/view/s;-><init>(II)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "displayTime in local : ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "), doNotDisturbTime : ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "g"

    iget-object v8, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {v7, v8, v5}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/sdk/smp/marketing/g;->m:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v5, v9, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    move v5, v10

    :goto_0
    if-eqz v5, :cond_1

    new-instance v3, Lh9/b;

    invoke-direct {v3, v1, v2}, Lh9/b;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doNotDisturbTime is off. display range : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh9/b;

    invoke-virtual {v2}, Lh9/b;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_1
    sget v5, Lkotlin/jvm/internal/m;->d:I

    iget v5, v3, Landroidx/core/view/s;->b:I

    iget v9, v3, Landroidx/core/view/s;->c:I

    invoke-static {v1, v2, v5, v9}, Lkotlin/jvm/internal/m;->l(Landroidx/core/view/s;Landroidx/core/view/s;II)Z

    move-result v5

    iget v9, v4, Landroidx/core/view/s;->b:I

    iget v12, v4, Landroidx/core/view/s;->c:I

    invoke-static {v1, v2, v9, v12}, Lkotlin/jvm/internal/m;->l(Landroidx/core/view/s;Landroidx/core/view/s;II)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v1, Landroidx/core/view/s;->b:I

    iget v12, v1, Landroidx/core/view/s;->c:I

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v12

    iget v12, v4, Landroidx/core/view/s;->b:I

    iget v13, v4, Landroidx/core/view/s;->c:I

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v12, v13

    if-ne v9, v12, :cond_2

    move v9, v11

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    if-nez v9, :cond_3

    move v9, v11

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_2
    if-eqz v5, :cond_6

    if-nez v9, :cond_4

    new-instance v2, Lh9/b;

    invoke-direct {v2, v1, v3}, Lh9/b;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;)V

    goto :goto_4

    :cond_4
    iget v5, v1, Landroidx/core/view/s;->b:I

    iget v9, v1, Landroidx/core/view/s;->c:I

    invoke-static {v3, v4, v5, v9}, Lkotlin/jvm/internal/m;->l(Landroidx/core/view/s;Landroidx/core/view/s;II)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v2, Lh9/b;

    invoke-direct {v2, v4, v3}, Lh9/b;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;)V

    goto :goto_4

    :cond_5
    new-instance v5, Lh9/b;

    invoke-direct {v5, v1, v3}, Lh9/b;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh9/b;

    invoke-direct {v1, v4, v2}, Lh9/b;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;)V

    goto :goto_3

    :cond_6
    if-eqz v9, :cond_7

    new-instance v1, Lh9/b;

    invoke-direct {v1, v4, v2}, Lh9/b;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;)V

    :goto_3
    move-object v2, v1

    goto :goto_4

    :cond_7
    iget v5, v1, Landroidx/core/view/s;->b:I

    iget v9, v1, Landroidx/core/view/s;->c:I

    invoke-static {v3, v4, v5, v9}, Lkotlin/jvm/internal/m;->l(Landroidx/core/view/s;Landroidx/core/view/s;II)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Lh9/b;

    invoke-direct {v3, v1, v2}, Lh9/b;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;)V

    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updated display range : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh9/b;

    invoke-virtual {v2}, Lh9/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh9/b;

    invoke-virtual {v3}, Lh9/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    const-string v2, ""

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v2, "local"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-wide v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->j:J

    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v1

    goto :goto_6

    :cond_9
    iget-wide v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->j:J

    :goto_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gez v4, :cond_a

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v11, :cond_b

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9/b;

    iget-object v1, v0, Lh9/b;->a:Landroidx/core/view/s;

    iget-object v0, v0, Lh9/b;->b:Landroidx/core/view/s;

    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->a(Landroid/content/Context;Landroidx/core/view/s;Landroidx/core/view/s;Ljava/util/Calendar;)J

    move-result-wide v0

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh9/b;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9/b;

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v1, Lh9/b;->b:Landroidx/core/view/s;

    iget-object v9, v0, Lh9/b;->b:Landroidx/core/view/s;

    invoke-static {v5, v9, v2, v4}, Lkotlin/jvm/internal/m;->l(Landroidx/core/view/s;Landroidx/core/view/s;II)Z

    move-result v2

    iget-object v4, v0, Lh9/b;->b:Landroidx/core/view/s;

    iget-object v5, v0, Lh9/b;->a:Landroidx/core/view/s;

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "can ignore range "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lh9/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". calculate display time with range "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lh9/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lj3/f;->x(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v5, v4, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->a(Landroid/content/Context;Landroidx/core/view/s;Landroidx/core/view/s;Ljava/util/Calendar;)J

    move-result-wide v0

    goto :goto_7

    :cond_c
    iget-object v0, v1, Lh9/b;->b:Landroidx/core/view/s;

    iget v2, v0, Landroidx/core/view/s;->b:I

    iget v9, v0, Landroidx/core/view/s;->c:I

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v9

    iget v9, v5, Landroidx/core/view/s;->b:I

    iget v10, v5, Landroidx/core/view/s;->c:I

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v10

    sub-int/2addr v9, v2

    if-gez v9, :cond_d

    add-int/lit16 v9, v9, 0x5a0

    :cond_d
    int-to-long v10, v9

    sget-wide v12, Lb9/a;->b:J

    mul-long/2addr v10, v12

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    add-long/2addr v12, v10

    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, v1, Lh9/b;->a:Landroidx/core/view/s;

    invoke-static {v1, v10, v11}, Lkotlin/jvm/internal/m;->s(Landroidx/core/view/s;J)Landroidx/core/view/s;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "shift "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". shifted:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(m)"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lj3/f;->x(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v4, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->a(Landroid/content/Context;Landroidx/core/view/s;Landroidx/core/view/s;Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-static {v0, v5, v1, v2}, Lkotlin/jvm/internal/m;->m(Landroidx/core/view/s;Landroidx/core/view/s;J)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "calculated display time is not in display time range. shift time back"

    invoke-static {v7, v0}, Lj3/f;->x(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v1, v10

    :cond_e
    move-wide v0, v1

    :goto_7
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->y(Landroid/content/Context;J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "update expected display time:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->i(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v8, p0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const-string p0, "display not available after applying doNotDisturbTime"

    invoke-static {v7, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException;-><init>()V

    throw p0
.end method

.method public final a(Landroid/content/Context;Landroidx/core/view/s;Landroidx/core/view/s;Ljava/util/Calendar;)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v5, "local"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, v0, Lcom/samsung/android/sdk/smp/marketing/g;->j:J

    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    iget-wide v4, v0, Lcom/samsung/android/sdk/smp/marketing/g;->j:J

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/smp/marketing/g;->n()J

    move-result-wide v6

    iget v8, v0, Lcom/samsung/android/sdk/smp/marketing/g;->q:I

    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xc

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v1, v2, v10, v12}, Lkotlin/jvm/internal/m;->l(Landroidx/core/view/s;Landroidx/core/view/s;II)Z

    move-result v10

    const/4 v12, 0x0

    const/16 v13, 0xd

    if-nez v10, :cond_3

    iget v10, v1, Landroidx/core/view/s;->b:I

    iget v1, v1, Landroidx/core/view/s;->c:I

    if-ltz v10, :cond_1

    const/16 v14, 0x18

    if-ge v10, v14, :cond_1

    if-ltz v1, :cond_1

    const/16 v14, 0x3c

    if-ge v1, v14, :cond_1

    invoke-virtual {v3, v9, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v11, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v13, v12}, Ljava/util/Calendar;->set(II)V

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v1, v14, v4

    if-ltz v1, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v1, v4, v14

    if-gez v1, :cond_3

    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sget-wide v14, Lb9/a;->d:J

    add-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/g;->b:Ljava/lang/String;

    const-string v4, "test"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v12

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v5

    :goto_2
    const-string v4, "g"

    if-eqz v1, :cond_6

    const-string v1, "skip random display : test message"

    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg9/b;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "skip random display : real time marketing"

    :goto_3
    invoke-static {v4, v0, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move v12, v5

    :goto_4
    if-eqz v12, :cond_d

    iget v1, v2, Landroidx/core/view/s;->b:I

    iget v2, v2, Landroidx/core/view/s;->c:I

    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    sub-long/2addr v6, v14

    sget-wide v14, Lb9/a;->b:J

    const-wide/16 v16, 0x1e

    mul-long v16, v16, v14

    cmp-long v5, v6, v16

    if-lez v5, :cond_c

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-long v9, v1

    sget-wide v18, Lb9/a;->c:J

    mul-long v9, v9, v18

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-long v1, v2

    mul-long/2addr v1, v14

    add-long/2addr v1, v9

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v9, v5

    sub-long/2addr v1, v9

    const-wide/16 v9, 0x0

    cmp-long v5, v1, v9

    if-gez v5, :cond_8

    sget-wide v11, Lb9/a;->d:J

    add-long/2addr v1, v11

    :cond_8
    int-to-long v11, v8

    mul-long/2addr v11, v14

    cmp-long v5, v11, v1

    if-lez v5, :cond_9

    goto :goto_5

    :cond_9
    move-wide v1, v11

    :goto_5
    sub-long v6, v6, v16

    cmp-long v5, v1, v6

    if-lez v5, :cond_a

    move-wide v1, v6

    :cond_a
    sub-long v5, v1, v9

    sget-wide v7, Lb9/a;->a:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    if-gtz v5, :cond_b

    goto :goto_6

    :cond_b
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v7

    add-long/2addr v9, v5

    :goto_6
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "random display(s):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v6, v9, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", display(m):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v9, v14

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", range(m) : [0,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v1, v14

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    const-string v1, "do not random display. less than 30 min left until ttlEnd"

    :goto_7
    invoke-static {v4, v0, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Landroid/content/Context;Z)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->o(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-nez p2, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->l()Landroidx/core/view/s;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->k()Landroidx/core/view/s;

    move-result-object v5

    new-instance v6, Landroidx/core/view/s;

    iget v7, p0, Lcom/samsung/android/sdk/smp/marketing/g;->m:I

    iget v8, p0, Lcom/samsung/android/sdk/smp/marketing/g;->o:I

    invoke-direct {v6, v7, v8}, Landroidx/core/view/s;-><init>(II)V

    new-instance v7, Landroidx/core/view/s;

    iget v8, p0, Lcom/samsung/android/sdk/smp/marketing/g;->n:I

    iget v9, p0, Lcom/samsung/android/sdk/smp/marketing/g;->p:I

    invoke-direct {v7, v8, v9}, Landroidx/core/view/s;-><init>(II)V

    invoke-static {v6, v7, v2, v3}, Lkotlin/jvm/internal/m;->m(Landroidx/core/view/s;Landroidx/core/view/s;J)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-static {v4, v5, v2, v3}, Lkotlin/jvm/internal/m;->m(Landroidx/core/view/s;Landroidx/core/view/s;J)Z

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    :cond_3
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "not valid display time range. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->t(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->l()Landroidx/core/view/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "~"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->k()Landroidx/core/view/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/s;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "g"

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->C(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->v(Landroid/content/Context;)V

    return v1

    :cond_5
    return v3

    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "fail_due_to_do_not_disturb_time"

    goto :goto_1

    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "dberror"

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return v1
.end method

.method public final c(Landroid/content/Context;I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const-string v1, "g"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v4

    invoke-virtual {v4, p2}, Lf9/c;->H(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lfc/e;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "cannot show notification : disabled notification option"

    invoke-static {v1, v0, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, p2, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p2, "cannot show notification : channel not created"

    invoke-static {v1, v0, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, p2, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return v2
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "marketing"

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "optin"

    invoke-virtual {v0, v1}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const-string v2, "fail to display. currently opt out."

    const-string v3, "g"

    invoke-static {v3, v0, v2}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public e(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "g"

    const-string p1, "fail to clear. db open fail"

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->c:Ljava/lang/String;

    invoke-static {v1}, Lh9/a;->t(Ljava/lang/String;)Lh9/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->E:I

    invoke-virtual {v1, p1, v2}, Lh9/a;->k(Landroid/content/Context;I)Z

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->B(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v0}, Lc9/b;->c()V

    return-void
.end method

.method public final f(Landroid/content/Context;Z)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lh9/a;->t(Ljava/lang/String;)Lh9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p2, "g"

    const-string v0, "fail to display. displaymanager null"

    invoke-static {p2, v1, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->F:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->s(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->j()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lj9/a;

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v5, "local"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->l:J

    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->l:J

    :goto_0
    invoke-direct {v3, v4, v5, v1, p2}, Lj9/a;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v0, p1, v2, v3}, Lh9/a;->q(Landroid/content/Context;Landroid/os/Bundle;Lj9/a;)V

    :cond_4
    return-void
.end method

.method public g(Landroid/content/Context;)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->b:Ljava/lang/String;

    const-string v2, "test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    const-string v2, "g"

    const/4 v5, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->A:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->B:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->C:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->D:I

    if-ne v0, v6, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    iget v6, p0, Lcom/samsung/android/sdk/smp/marketing/g;->A:I

    int-to-long v6, v6

    sget-wide v8, Lb9/a;->d:J

    mul-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lc9/b;->f(J)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/sdk/smp/marketing/g;->B:I

    if-lt v6, v7, :cond_3

    const-string v6, "over frequency capping rule(day)"

    invoke-static {v2, v3, v6}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_4

    :cond_3
    iget v6, p0, Lcom/samsung/android/sdk/smp/marketing/g;->C:I

    int-to-long v6, v6

    sget-wide v8, Lb9/a;->c:J

    mul-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lc9/b;->f(J)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/sdk/smp/marketing/g;->D:I

    if-lt v6, v7, :cond_4

    const-string v6, "over frequency capping rule(hour)"

    invoke-static {v2, v3, v6}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    invoke-virtual {p0, p1, v3, v5}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lc9/b;->c()V

    move v0, v1

    goto :goto_6

    :cond_4
    invoke-virtual {v0}, Lc9/b;->c()V

    goto :goto_5

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0

    :cond_5
    :goto_5
    move v0, v4

    :goto_6
    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/sdk/smp/marketing/g;->b(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->w:Landroidx/activity/result/l;

    if-nez v0, :cond_6

    const-string p0, "mFilter is null"

    invoke-static {v2, p0}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_6
    iget-object v3, v0, Landroidx/activity/result/l;->c:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONArray;

    iget v0, v0, Landroidx/activity/result/l;->a:I

    if-nez v3, :cond_7

    const-string v0, "installArray is null"

    invoke-static {v2, v0}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    move v6, v1

    :goto_7
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lfc/e;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_8

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_8

    :goto_8
    move v0, v4

    goto :goto_9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "checkFilterInstall exception: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v0, v1

    :goto_9
    if-nez v0, :cond_a

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->INSTALL_CHECK_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_d

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->w:Landroidx/activity/result/l;

    iget-object v3, v0, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONArray;

    iget v0, v0, Landroidx/activity/result/l;->b:I

    if-nez v3, :cond_b

    const-string v0, "notInstallArray is null"

    invoke-static {v2, v0}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    move v6, v1

    :goto_a
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lfc/e;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v7, :cond_c

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_c

    :goto_b
    move v0, v4

    goto :goto_c

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "checkFilterNotInstall exception: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move v0, v1

    :goto_c
    if-nez v0, :cond_e

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->NOT_INSTALL_CHECK_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_d
    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    move p0, v1

    goto :goto_f

    :cond_e
    :goto_e
    move p0, v4

    :goto_f
    if-eqz p0, :cond_f

    move v1, v4

    :cond_f
    return v1
.end method

.method public h(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->b(Landroid/content/Context;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public abstract i(Landroid/content/Context;)Z
.end method

.method public j()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayid"

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->E:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->v:I

    const-string v2, "channel_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->z:Z

    const-string v1, "p_link"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final k()Landroidx/core/view/s;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/core/view/s;

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->g:I

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->i:I

    invoke-direct {v0, v1, p0}, Landroidx/core/view/s;-><init>(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->g:I

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->i:I

    new-instance v1, Landroidx/core/view/s;

    invoke-direct {v1, v0, p0}, Landroidx/core/view/s;-><init>(II)V

    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Landroidx/core/view/s;)Landroidx/core/view/s;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final l()Landroidx/core/view/s;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/core/view/s;

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->f:I

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->h:I

    invoke-direct {v0, v1, p0}, Landroidx/core/view/s;-><init>(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->f:I

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->h:I

    new-instance v1, Landroidx/core/view/s;

    invoke-direct {v1, v0, p0}, Landroidx/core/view/s;-><init>(II)V

    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Landroidx/core/view/s;)Landroidx/core/view/s;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final n()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->k:J

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->k:J

    :goto_0
    return-wide v0
.end method

.method public final o(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->n()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->i(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", until:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->i(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "g"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "over display time"

    invoke-static {v1, v2, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lfc/e;->D(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lfc/e;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_1

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public p()Z
    .locals 1

    const-string v0, "passive"

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "marketing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final q(Landroid/content/Context;I)V
    .locals 12

    const-string v0, ""

    const-string v1, "C1009_"

    invoke-static {p1}, Lfc/e;->D(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v4, p0, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lfc/e;->x(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v4, p0, v3}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "g"

    const-string p1, "db open fail"

    invoke-static {p0, v4, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v2, v4}, Lc9/b;->E(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x3ea

    if-eq p2, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v4}, Lc9/b;->S(ILjava/lang/String;)V

    :cond_3
    const/16 v5, 0x190

    const/4 v6, 0x0

    if-gt v5, p2, :cond_4

    const/16 v5, 0x1f4

    if-ge p2, v5, :cond_4

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v2, v4, v1}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    invoke-virtual {v2, v6, v4}, Lc9/b;->S(ILjava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->GET_MARKETING_STATUS_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v4, v1, p2}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-le v3, v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v2, v4, v0}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    invoke-virtual {v2, v6, v4}, Lc9/b;->S(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfc/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->GET_MARKETING_STATUS_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v4, v0, p2}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->v(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->r:I

    int-to-long v7, p0

    sget-wide v9, Lb9/a;->b:J

    mul-long/2addr v7, v9

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/g;->I:[J

    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/g;->G:[I

    if-eqz v3, :cond_7

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7

    const/4 v9, 0x2

    if-eq v3, v9, :cond_6

    aget p2, p2, v9

    int-to-long v10, p2

    div-long/2addr v7, v10

    aget-wide v9, p0, v9

    cmp-long p0, v7, v9

    if-gez p0, :cond_8

    goto :goto_1

    :cond_6
    aget p2, p2, v5

    int-to-long v9, p2

    div-long/2addr v7, v9

    aget-wide v9, p0, v5

    cmp-long p0, v7, v9

    if-gez p0, :cond_8

    goto :goto_1

    :cond_7
    aget p2, p2, v6

    int-to-long v9, p2

    div-long/2addr v7, v9

    aget-wide v9, p0, v6

    cmp-long p0, v7, v9

    if-gez p0, :cond_8

    :goto_1
    move-wide v7, v9

    :cond_8
    sget-wide v9, Lcom/samsung/android/sdk/smp/marketing/g;->H:J

    cmp-long p0, v7, v9

    if-lez p0, :cond_9

    move-wide v7, v9

    :cond_9
    add-long/2addr v0, v7

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "marketing_sub_action"

    const-string v3, "get_marketing_status"

    invoke-virtual {p0, p2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lp9/a;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p2, v3, p0, v4}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p1, p2, v0, v1, v6}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v2}, Lc9/b;->c()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Lc9/b;->c()V

    throw p0
.end method

.method public final r(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "C1009_"

    const/16 v1, 0x190

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-gt v1, p2, :cond_0

    const/16 v1, 0x1f4

    if-ge p2, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lfc/e;->D(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p0, p2, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lfc/e;->x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p0, p2, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0x3ec

    if-eq p2, v1, :cond_5

    const/16 v1, 0x3f0

    if-eq p2, v1, :cond_5

    const/16 v1, 0x3f3

    if-eq p2, v1, :cond_5

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "g"

    const-string p2, "db open fail"

    invoke-static {p1, p0, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {v1, p0}, Lc9/b;->E(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfc/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lc9/b;->c()V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2, p0}, Lc9/b;->S(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lc9/b;->c()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "marketing_sub_action"

    const-string v1, "download_res"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v0, v1, p2, p0}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lb9/b;->d:J

    add-long/2addr v1, v3

    const/4 p0, 0x0

    invoke-static {p1, v0, v1, v2, p0}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lc9/b;->c()V

    throw p0

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method public final s(Landroid/content/Context;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const-string v1, "g"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p0}, Ll9/b;->w0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$LocaleNotMatchException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidReferrerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fail to parse resource."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_1
    const-string v3, "fail to parse resource. invalid referrer"

    invoke-static {v1, v0, v3}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->REFERRER_VALIDATION_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_2
    move-exception v2

    instance-of v3, v2, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail to parse resource. file not found"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "txt_file_not_found"

    goto :goto_0

    :cond_0
    const-string v2, "fail to parse resource. IOException"

    invoke-static {v1, v0, v2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "file_io_error"

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    const-string v3, "fail to parse resource"

    :goto_1
    invoke-static {v1, v0, v3}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_4
    const-string v3, "fail to parse resource. invalid data"

    invoke-static {v1, v0, v3}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_5
    const-string v3, "fail to parse resource. not supported type"

    invoke-static {v1, v0, v3}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_6
    const-string v3, "fail to parse resource. no matched locale"

    invoke-static {v1, v0, v3}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_2
    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public final t(Landroid/content/Context;)V
    .locals 14

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->t:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Ll9/b;->x0(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "g"

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const-string v2, "fail to request resource. contents url not found"

    invoke-static {v0, v1, v2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "contents_url_not_found"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    add-int/2addr v1, v8

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lv4/b;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    sget-object v2, Lcom/samsung/android/sdk/smp/common/network/d;->a:Lv1/i;

    const-string v10, "d"

    const/4 v11, 0x0

    if-eqz p1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "resource download starts. "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lw1/i;

    invoke-direct {v12}, Lw1/i;-><init>()V

    new-instance v13, Lcom/samsung/android/sdk/smp/common/network/a;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v12

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/smp/common/network/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw1/i;Lw1/i;)V

    iput-boolean v11, v13, Lv1/h;->i:Z

    new-instance v2, Lj3/b;

    const/16 v3, 0x3c

    int-to-long v3, v3

    sget-wide v5, Lb9/a;->a:J

    mul-long/2addr v5, v3

    long-to-int v5, v5

    invoke-direct {v2, v5, v11}, Lj3/b;-><init>(II)V

    iput-object v2, v13, Lv1/h;->l:Lj3/b;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/network/d;->a:Lv1/i;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lfc/e;->K(Landroid/content/Context;)Lv1/i;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/smp/common/network/d;->a:Lv1/i;

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/smp/common/network/d;->a:Lv1/i;

    invoke-virtual {v2, v13}, Lv1/i;->a(Lv1/h;)V

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v3, v4, v2}, Lw1/i;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string v2, "resource download success"

    invoke-static {v10, v2}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lb0/a;

    const/16 v3, 0xc8

    invoke-direct {v2, v8, v3}, Lb0/a;-><init>(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/common/network/d;->g(Ljava/lang/Exception;)Lb0/a;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "download resource fail. invalid params"

    invoke-static {v10, v2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lb0/a;

    const/16 v3, 0x3f0

    invoke-direct {v2, v11, v3}, Lb0/a;-><init>(ZI)V

    :goto_0
    iget-boolean v3, v2, Lb0/a;->a:Z

    if-eqz v3, :cond_d

    sget v2, Lh9/a;->a:I

    const-class v2, Lh9/a;

    monitor-enter v2

    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    :try_start_3
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v9}, Lh9/a;->G(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_5
    const-string v5, "a"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unzip success ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_1
    monitor-exit v2

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v5, v3

    move-object v3, v4

    :goto_1
    :try_start_6
    const-string v6, "a"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unzip fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_8

    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v4, v3

    :goto_3
    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_4
    :cond_6
    :try_start_9
    throw p0

    :cond_7
    :goto_5
    const-string v3, "a"

    const-string v5, "unzip fail. invalid params"

    invoke-static {v3, v5}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_5
    :cond_8
    :goto_6
    monitor-exit v2

    move v8, v11

    :goto_7
    if-eqz v8, :cond_b

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string p0, "g"

    const-string p1, "db open fail"

    invoke-static {p0, v2, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, v2, v3}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    invoke-virtual {v1, v11, v2}, Lc9/b;->S(ILjava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOADED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v2, v3, v0}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->x(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->w(Landroid/content/Context;)V

    :cond_a
    invoke-virtual {v1}, Lc9/b;->c()V

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v4}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    const/16 v0, 0x3ef

    goto :goto_8

    :catchall_3
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_d
    iget v0, v2, Lb0/a;->b:I

    :goto_8
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->r(Landroid/content/Context;I)V

    goto :goto_9

    :catch_6
    move-exception v0

    const-string v1, "g"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail to request resource. invalid contents url. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "contents_url_not_found"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_e
    :goto_9
    return-void
.end method

.method public final u(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf9/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->USER_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    iget-object v3, v1, Lf9/a;->f:Ljava/io/Serializable;

    check-cast v3, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    if-nez v3, :cond_0

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string v4, "opt_in_policy"

    sget-object v5, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->DEVICE_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iput-object v4, v1, Lf9/a;->f:Ljava/io/Serializable;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_0
    :goto_0
    iget-object v1, v1, Lf9/a;->f:Ljava/io/Serializable;

    check-cast v1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    const-string v3, "uid"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "g"

    iget-object v5, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v0, "fail to get marketing status. appid null"

    invoke-static {v4, v5, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "appid_error"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v1, Li9/e;

    const/4 v6, 0x1

    invoke-direct {v1, v5, v0, v3, v6}, Li9/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x3c

    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/smp/common/network/d;->i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;

    move-result-object v0

    iget-boolean v1, v0, Lb0/a;->a:Z

    if-eqz v1, :cond_a

    iget-object v0, v0, Lb0/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "sts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "tip"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_7

    const/16 v3, 0x190

    if-eq v0, v3, :cond_5

    const/16 v3, 0x12c

    if-eq v0, v3, :cond_7

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v5, p0, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    if-eqz p1, :cond_b

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "db open fail"

    invoke-static {v4, v5, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {p0, v5, v0}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->MARKETING_CANCELED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v5, v0, v2}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lv4/b;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh9/a;->p(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lc9/b;->c()V

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    int-to-long v8, v1

    sget-wide v10, Lb9/a;->a:J

    mul-long/2addr v8, v10

    cmp-long v1, v3, v8

    if-gtz v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->n()J

    move-result-wide v3

    cmp-long v1, v6, v3

    if-ltz v1, :cond_8

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, v5, v1}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lc9/b;->S(ILjava/lang/String;)V

    invoke-virtual {v0}, Lc9/b;->c()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->v(Landroid/content/Context;)V

    goto :goto_4

    :cond_9
    :goto_2
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->USER_CHANGE_DATE_AND_TIME_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-virtual {v0}, Lc9/b;->c()V

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to get marketing status. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/16 v0, 0x3f7

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->q(Landroid/content/Context;I)V

    goto :goto_4

    :cond_a
    iget v0, v0, Lb0/a;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->q(Landroid/content/Context;I)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v2, "display"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_first_display"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lp9/a;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    const/4 p0, 0x0

    invoke-static {p1, v1, v2, v3, p0}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    return-void
.end method

.method public final w(Landroid/content/Context;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->b:Ljava/lang/String;

    const-string v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v4, "get_marketing_status"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lp9/a;

    sget-object v4, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v1, v4, v0, v3}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->r:I

    int-to-long v5, p0

    sget-wide v7, Lb9/a;->b:J

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {p1, v1, v3, v4, v2}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    goto :goto_3

    :cond_3
    const-string v0, "g"

    const-string v1, "skip get status"

    invoke-static {v0, v1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p0, "db open fail"

    invoke-static {v0, v3, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, v3, v0}, Lc9/b;->U(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    invoke-virtual {v1}, Lc9/b;->c()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->v(Landroid/content/Context;)V

    :goto_3
    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 9

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->s:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string p0, "g"

    const-string p1, "already display time. skip screen on listening"

    invoke-static {p0, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->l()Landroidx/core/view/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->k()Landroidx/core/view/s;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->m:I

    iget v3, p0, Lcom/samsung/android/sdk/smp/marketing/g;->o:I

    iget v4, p0, Lcom/samsung/android/sdk/smp/marketing/g;->n:I

    iget v5, p0, Lcom/samsung/android/sdk/smp/marketing/g;->p:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "marketing_sub_action"

    const-string v8, "listening_start"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v0, Landroidx/core/view/s;->b:I

    const-string v8, "display_start_hour"

    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, v0, Landroidx/core/view/s;->c:I

    const-string v7, "display_start_min"

    invoke-virtual {v6, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, v1, Landroidx/core/view/s;->b:I

    const-string v7, "display_end_hour"

    invoke-virtual {v6, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, v1, Landroidx/core/view/s;->c:I

    const-string v1, "display_end_min"

    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "do_not_disturb_start_hour"

    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "do_not_disturb_start_min"

    invoke-virtual {v6, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "do_not_disturb_end_hour"

    invoke-virtual {v6, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "do_not_disturb_end_min"

    invoke-virtual {v6, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    const-string v2, "screen_on_end_time"

    invoke-virtual {v6, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lp9/a;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->s:I

    int-to-long v3, p0

    sget-wide v5, Lb9/a;->b:J

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    const/4 p0, 0x0

    invoke-static {p1, v0, v1, v2, p0}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    return-void
.end method

.method public final y(Landroid/content/Context;J)V
    .locals 2

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iput-wide p2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->u:J

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "expdt"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lc9/b;->R(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lc9/b;->c()V

    return-void

    :cond_0
    :try_start_3
    const-string p2, "g"

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const-string p3, "updateExpectedDisplayTime. update fail"

    invoke-static {p2, p0, p3}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lc9/b;->c()V

    throw p0

    :cond_1
    const-string p1, "g"

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const-string p2, "updateExpectedDisplayTime. db open fail"

    invoke-static {p1, p0, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p0
.end method

.method public final z(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/g;->A(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method
