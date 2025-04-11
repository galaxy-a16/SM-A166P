.class public final Lp1/r;
.super Landroidx/room/f0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lp1/r;->a:I

    const-string v0, "database"

    .line 1
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/room/f0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    .line 2
    iput p2, p0, Lp1/r;->a:I

    invoke-direct {p0, p1}, Landroidx/room/f0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final bind(La1/i;Ljava/lang/Object;)V
    .locals 10

    check-cast p2, Lp1/q;

    iget-object p0, p2, Lp1/q;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    iget-object v1, p2, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    invoke-static {v1}, Lp9/d;->q0(Landroidx/work/WorkInfo$State;)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-interface {p1, v3, v1, v2}, La1/g;->W(IJ)V

    const/4 v1, 0x3

    iget-object v2, p2, Lp1/q;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v2}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    iget-object v1, p2, Lp1/q;->d:Ljava/lang/String;

    const/4 v2, 0x4

    if-nez v1, :cond_2

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v2, v1}, La1/g;->r(ILjava/lang/String;)V

    :goto_2
    iget-object v1, p2, Lp1/q;->e:Landroidx/work/f;

    invoke-static {v1}, Landroidx/work/f;->b(Landroidx/work/f;)[B

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_3

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v2, v1}, La1/g;->i0(I[B)V

    :goto_3
    iget-object v1, p2, Lp1/q;->f:Landroidx/work/f;

    invoke-static {v1}, Landroidx/work/f;->b(Landroidx/work/f;)[B

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_4

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v2, v1}, La1/g;->i0(I[B)V

    :goto_4
    const/4 v1, 0x7

    iget-wide v4, p2, Lp1/q;->g:J

    invoke-interface {p1, v1, v4, v5}, La1/g;->W(IJ)V

    const/16 v1, 0x8

    iget-wide v4, p2, Lp1/q;->h:J

    invoke-interface {p1, v1, v4, v5}, La1/g;->W(IJ)V

    const/16 v1, 0x9

    iget-wide v4, p2, Lp1/q;->i:J

    invoke-interface {p1, v1, v4, v5}, La1/g;->W(IJ)V

    iget v1, p2, Lp1/q;->k:I

    int-to-long v1, v1

    const/16 v4, 0xa

    invoke-interface {p1, v4, v1, v2}, La1/g;->W(IJ)V

    const-string v1, "backoffPolicy"

    iget-object v2, p2, Lp1/q;->l:Landroidx/work/BackoffPolicy;

    invoke-static {v2, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lp1/w;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_6

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    move v1, v2

    :goto_5
    const/16 v4, 0xb

    int-to-long v5, v1

    invoke-interface {p1, v4, v5, v6}, La1/g;->W(IJ)V

    const/16 v1, 0xc

    iget-wide v4, p2, Lp1/q;->m:J

    invoke-interface {p1, v1, v4, v5}, La1/g;->W(IJ)V

    const/16 v1, 0xd

    iget-wide v4, p2, Lp1/q;->n:J

    invoke-interface {p1, v1, v4, v5}, La1/g;->W(IJ)V

    const/16 v1, 0xe

    iget-wide v4, p2, Lp1/q;->o:J

    invoke-interface {p1, v1, v4, v5}, La1/g;->W(IJ)V

    const/16 v1, 0xf

    iget-wide v4, p2, Lp1/q;->p:J

    invoke-interface {p1, v1, v4, v5}, La1/g;->W(IJ)V

    iget-boolean v1, p2, Lp1/q;->q:Z

    const/16 v4, 0x10

    int-to-long v5, v1

    invoke-interface {p1, v4, v5, v6}, La1/g;->W(IJ)V

    const-string v1, "policy"

    iget-object v4, p2, Lp1/q;->r:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {v4, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lp1/w;->d:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v0, :cond_8

    if-ne v1, v3, :cond_7

    goto :goto_6

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    move v0, v2

    :goto_6
    const/16 v1, 0x11

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, La1/g;->W(IJ)V

    iget v0, p2, Lp1/q;->s:I

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, La1/g;->W(IJ)V

    iget v0, p2, Lp1/q;->t:I

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, La1/g;->W(IJ)V

    iget-object p2, p2, Lp1/q;->j:Landroidx/work/d;

    const/16 v0, 0x1b

    const/16 v1, 0x1a

    const/16 v2, 0x19

    const/16 v3, 0x18

    const/16 v4, 0x17

    const/16 v5, 0x16

    const/16 v6, 0x15

    const/16 v7, 0x14

    if-eqz p2, :cond_9

    iget-object v8, p2, Landroidx/work/d;->a:Landroidx/work/NetworkType;

    invoke-static {v8}, Lp9/d;->X(Landroidx/work/NetworkType;)I

    move-result v8

    int-to-long v8, v8

    invoke-interface {p1, v7, v8, v9}, La1/g;->W(IJ)V

    iget-boolean v7, p2, Landroidx/work/d;->b:Z

    int-to-long v7, v7

    invoke-interface {p1, v6, v7, v8}, La1/g;->W(IJ)V

    iget-boolean v6, p2, Landroidx/work/d;->c:Z

    int-to-long v6, v6

    invoke-interface {p1, v5, v6, v7}, La1/g;->W(IJ)V

    iget-boolean v5, p2, Landroidx/work/d;->d:Z

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, La1/g;->W(IJ)V

    iget-boolean v4, p2, Landroidx/work/d;->e:Z

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, La1/g;->W(IJ)V

    iget-wide v3, p2, Landroidx/work/d;->f:J

    invoke-interface {p1, v2, v3, v4}, La1/g;->W(IJ)V

    iget-wide v2, p2, Landroidx/work/d;->g:J

    invoke-interface {p1, v1, v2, v3}, La1/g;->W(IJ)V

    iget-object p2, p2, Landroidx/work/d;->h:Ljava/util/Set;

    invoke-static {p2}, Lp9/d;->k0(Ljava/util/Set;)[B

    move-result-object p2

    invoke-interface {p1, v0, p2}, La1/g;->i0(I[B)V

    goto :goto_7

    :cond_9
    invoke-interface {p1, v7}, La1/g;->A(I)V

    invoke-interface {p1, v6}, La1/g;->A(I)V

    invoke-interface {p1, v5}, La1/g;->A(I)V

    invoke-interface {p1, v4}, La1/g;->A(I)V

    invoke-interface {p1, v3}, La1/g;->A(I)V

    invoke-interface {p1, v2}, La1/g;->A(I)V

    invoke-interface {p1, v1}, La1/g;->A(I)V

    invoke-interface {p1, v0}, La1/g;->A(I)V

    :goto_7
    const/16 p2, 0x1c

    if-nez p0, :cond_a

    invoke-interface {p1, p2}, La1/g;->A(I)V

    goto :goto_8

    :cond_a
    invoke-interface {p1, p2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_8
    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lp1/r;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    return-object p0

    :pswitch_0
    const-string p0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object p0

    :pswitch_1
    const-string p0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    return-object p0

    :pswitch_2
    const-string p0, "UPDATE workspec SET output=? WHERE id=?"

    return-object p0

    :pswitch_3
    const-string p0, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    return-object p0

    :pswitch_4
    const-string p0, "UPDATE workspec SET state=? WHERE id=?"

    return-object p0

    :pswitch_5
    const-string p0, "DELETE FROM workspec WHERE id=?"

    return-object p0

    :pswitch_6
    const-string p0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_7
    const-string p0, "UPDATE workspec SET generation=generation+1 WHERE id=?"

    return-object p0

    :pswitch_8
    const-string p0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object p0

    :pswitch_9
    const-string p0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object p0

    :pswitch_a
    const-string p0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
