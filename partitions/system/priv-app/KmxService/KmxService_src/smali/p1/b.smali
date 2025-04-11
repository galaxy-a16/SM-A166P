.class public final Lp1/b;
.super Landroidx/room/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p3, p0, Lp1/b;->a:I

    iput-object p1, p0, Lp1/b;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/room/g;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final bind(La1/i;Ljava/lang/Object;)V
    .locals 9

    iget p0, p0, Lp1/b;->a:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    check-cast p2, Lwa/b;

    iget-wide v3, p2, Lwa/b;->a:J

    invoke-interface {p1, v2, v3, v4}, La1/g;->W(IJ)V

    iget p0, p2, Lwa/b;->b:I

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, La1/g;->W(IJ)V

    return-void

    :pswitch_1
    check-cast p2, Lp1/t;

    iget-object p0, p2, Lp1/t;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lp1/t;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p2, Lp1/q;

    iget-object p0, p2, Lp1/q;->a:Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    invoke-static {p0}, Lp9/d;->q0(Landroidx/work/WorkInfo$State;)I

    move-result p0

    int-to-long v3, p0

    invoke-interface {p1, v1, v3, v4}, La1/g;->W(IJ)V

    iget-object p0, p2, Lp1/q;->c:Ljava/lang/String;

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lp1/q;->d:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_4
    iget-object p0, p2, Lp1/q;->e:Landroidx/work/f;

    invoke-static {p0}, Landroidx/work/f;->b(Landroidx/work/f;)[B

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0, p0}, La1/g;->i0(I[B)V

    :goto_5
    iget-object p0, p2, Lp1/q;->f:Landroidx/work/f;

    invoke-static {p0}, Landroidx/work/f;->b(Landroidx/work/f;)[B

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0, p0}, La1/g;->i0(I[B)V

    :goto_6
    const/4 p0, 0x7

    iget-wide v3, p2, Lp1/q;->g:J

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    const/16 p0, 0x8

    iget-wide v3, p2, Lp1/q;->h:J

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    const/16 p0, 0x9

    iget-wide v3, p2, Lp1/q;->i:J

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    iget p0, p2, Lp1/q;->k:I

    int-to-long v3, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    const-string p0, "backoffPolicy"

    iget-object v0, p2, Lp1/q;->l:Landroidx/work/BackoffPolicy;

    invoke-static {v0, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lp1/w;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x0

    if-eq p0, v2, :cond_8

    if-ne p0, v1, :cond_7

    move p0, v2

    goto :goto_7

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    move p0, v0

    :goto_7
    const/16 v3, 0xb

    int-to-long v4, p0

    invoke-interface {p1, v3, v4, v5}, La1/g;->W(IJ)V

    const/16 p0, 0xc

    iget-wide v3, p2, Lp1/q;->m:J

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    const/16 p0, 0xd

    iget-wide v3, p2, Lp1/q;->n:J

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    const/16 p0, 0xe

    iget-wide v3, p2, Lp1/q;->o:J

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    const/16 p0, 0xf

    iget-wide v3, p2, Lp1/q;->p:J

    invoke-interface {p1, p0, v3, v4}, La1/g;->W(IJ)V

    iget-boolean p0, p2, Lp1/q;->q:Z

    const/16 v3, 0x10

    int-to-long v4, p0

    invoke-interface {p1, v3, v4, v5}, La1/g;->W(IJ)V

    const-string p0, "policy"

    iget-object v3, p2, Lp1/q;->r:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {v3, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lp1/w;->d:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p0, p0, v3

    if-eq p0, v2, :cond_a

    if-ne p0, v1, :cond_9

    goto :goto_8

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    move v2, v0

    :goto_8
    const/16 p0, 0x11

    int-to-long v0, v2

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget p0, p2, Lp1/q;->s:I

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget p0, p2, Lp1/q;->t:I

    int-to-long v0, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget-object p0, p2, Lp1/q;->j:Landroidx/work/d;

    const/16 p2, 0x1b

    const/16 v0, 0x1a

    const/16 v1, 0x19

    const/16 v2, 0x18

    const/16 v3, 0x17

    const/16 v4, 0x16

    const/16 v5, 0x15

    const/16 v6, 0x14

    if-eqz p0, :cond_b

    iget-object v7, p0, Landroidx/work/d;->a:Landroidx/work/NetworkType;

    invoke-static {v7}, Lp9/d;->X(Landroidx/work/NetworkType;)I

    move-result v7

    int-to-long v7, v7

    invoke-interface {p1, v6, v7, v8}, La1/g;->W(IJ)V

    iget-boolean v6, p0, Landroidx/work/d;->b:Z

    int-to-long v6, v6

    invoke-interface {p1, v5, v6, v7}, La1/g;->W(IJ)V

    iget-boolean v5, p0, Landroidx/work/d;->c:Z

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, La1/g;->W(IJ)V

    iget-boolean v4, p0, Landroidx/work/d;->d:Z

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, La1/g;->W(IJ)V

    iget-boolean v3, p0, Landroidx/work/d;->e:Z

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, La1/g;->W(IJ)V

    iget-wide v2, p0, Landroidx/work/d;->f:J

    invoke-interface {p1, v1, v2, v3}, La1/g;->W(IJ)V

    iget-wide v1, p0, Landroidx/work/d;->g:J

    invoke-interface {p1, v0, v1, v2}, La1/g;->W(IJ)V

    iget-object p0, p0, Landroidx/work/d;->h:Ljava/util/Set;

    invoke-static {p0}, Lp9/d;->k0(Ljava/util/Set;)[B

    move-result-object p0

    invoke-interface {p1, p2, p0}, La1/g;->i0(I[B)V

    goto :goto_9

    :cond_b
    invoke-interface {p1, v6}, La1/g;->A(I)V

    invoke-interface {p1, v5}, La1/g;->A(I)V

    invoke-interface {p1, v4}, La1/g;->A(I)V

    invoke-interface {p1, v3}, La1/g;->A(I)V

    invoke-interface {p1, v2}, La1/g;->A(I)V

    invoke-interface {p1, v1}, La1/g;->A(I)V

    invoke-interface {p1, v0}, La1/g;->A(I)V

    invoke-interface {p1, p2}, La1/g;->A(I)V

    :goto_9
    return-void

    :pswitch_3
    check-cast p2, Lp1/m;

    iget-object p0, p2, Lp1/m;->a:Ljava/lang/String;

    if-nez p0, :cond_c

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_a

    :cond_c
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_a
    iget-object p0, p2, Lp1/m;->b:Landroidx/work/f;

    invoke-static {p0}, Landroidx/work/f;->b(Landroidx/work/f;)[B

    move-result-object p0

    if-nez p0, :cond_d

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_b

    :cond_d
    invoke-interface {p1, v1, p0}, La1/g;->i0(I[B)V

    :goto_b
    return-void

    :pswitch_4
    check-cast p2, Lp1/k;

    iget-object p0, p2, Lp1/k;->a:Ljava/lang/String;

    if-nez p0, :cond_e

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_c

    :cond_e
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_c
    iget-object p0, p2, Lp1/k;->b:Ljava/lang/String;

    if-nez p0, :cond_f

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_d

    :cond_f
    invoke-interface {p1, v1, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_d
    return-void

    :pswitch_5
    check-cast p2, Lp1/g;

    iget-object p0, p2, Lp1/g;->a:Ljava/lang/String;

    if-nez p0, :cond_10

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_e

    :cond_10
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_e
    iget p0, p2, Lp1/g;->b:I

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, La1/g;->W(IJ)V

    iget p0, p2, Lp1/g;->c:I

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, La1/g;->W(IJ)V

    return-void

    :pswitch_6
    check-cast p2, Lp1/d;

    iget-object p0, p2, Lp1/d;->a:Ljava/lang/String;

    if-nez p0, :cond_11

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_f

    :cond_11
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_f
    iget-object p0, p2, Lp1/d;->b:Ljava/lang/Long;

    if-nez p0, :cond_12

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_10

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La1/g;->W(IJ)V

    :goto_10
    return-void

    :pswitch_7
    check-cast p2, Lp1/a;

    iget-object p0, p2, Lp1/a;->a:Ljava/lang/String;

    if-nez p0, :cond_13

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_11

    :cond_13
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_11
    iget-object p0, p2, Lp1/a;->b:Ljava/lang/String;

    if-nez p0, :cond_14

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_12

    :cond_14
    invoke-interface {p1, v1, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_12
    return-void

    :goto_13
    check-cast p2, Lwa/c;

    iget p0, p2, Lwa/c;->a:I

    int-to-long v3, p0

    invoke-interface {p1, v2, v3, v4}, La1/g;->W(IJ)V

    iget p0, p2, Lwa/c;->b:I

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, La1/g;->W(IJ)V

    iget-object p0, p2, Lwa/c;->c:[B

    if-nez p0, :cond_15

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_14

    :cond_15
    invoke-interface {p1, v0, p0}, La1/g;->i0(I[B)V

    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lp1/b;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INSERT OR REPLACE INTO `tree_node` (`level`,`index`,`bytes`) VALUES (?,?,?)"

    return-object p0

    :pswitch_0
    const-string p0, "INSERT OR IGNORE INTO `empty_index` (`id`,`index`) VALUES (nullif(?, 0),?)"

    return-object p0

    :pswitch_1
    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_2
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_3
    const-string p0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object p0

    :pswitch_4
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_5
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object p0

    :pswitch_6
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object p0

    :pswitch_7
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
