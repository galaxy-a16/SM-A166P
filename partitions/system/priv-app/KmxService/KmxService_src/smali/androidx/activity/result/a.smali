.class public final Landroidx/activity/result/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/activity/result/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc3/h;Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lc3/h;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lc3/h;->b:I

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Lc3/h;->c:I

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lc3/h;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lc3/h;->e:Landroid/os/IBinder;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->H(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lc3/h;->f:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->M(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lc3/h;->g:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->G(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lc3/h;->h:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lc3/h;->i:[La3/d;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->M(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lc3/h;->j:[La3/d;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->M(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 p2, 0xc

    iget-boolean v1, p0, Lc3/h;->k:Z

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget v1, p0, Lc3/h;->l:I

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/16 p2, 0xe

    iget-boolean v1, p0, Lc3/h;->m:Z

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xf

    iget-object p0, p0, Lc3/h;->n:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Landroidx/activity/result/a;->a:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v13, v9

    move v14, v13

    move/from16 v16, v14

    move-object v12, v10

    move-object v15, v12

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v16

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->F(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v15

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_0

    :cond_4
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_5
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, La3/s;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, La3/s;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, -0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v8, :cond_8

    if-eq v5, v7, :cond_7

    if-eq v5, v6, :cond_6

    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_6
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_1

    :cond_7
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_1

    :cond_8
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_9
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, La3/d;

    invoke-direct {v0, v10, v9, v2, v3}, La3/d;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v2, v9

    move-object v3, v10

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v11, v4

    if-eq v11, v8, :cond_d

    if-eq v11, v7, :cond_c

    if-eq v11, v6, :cond_b

    if-eq v11, v5, :cond_a

    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_a
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v10}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/app/PendingIntent;

    goto :goto_2

    :cond_c
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_2

    :cond_d
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_2

    :cond_e
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, La3/b;

    invoke-direct {v0, v9, v2, v10, v3}, La3/b;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    sget-object v2, Lc3/h;->p:[Lcom/google/android/gms/common/api/Scope;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lc3/h;->q:[La3/d;

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v20

    move v12, v9

    move v13, v12

    move v14, v13

    move/from16 v22, v14

    move/from16 v23, v22

    move/from16 v24, v23

    move-object v15, v10

    move-object/from16 v16, v15

    move-object/from16 v19, v16

    move-object/from16 v25, v19

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_5
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    goto :goto_3

    :pswitch_6
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v24

    goto :goto_3

    :pswitch_7
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v23

    goto :goto_3

    :pswitch_8
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v22

    goto :goto_3

    :pswitch_9
    sget-object v3, La3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, [La3/d;

    goto :goto_3

    :pswitch_a
    sget-object v3, La3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, [La3/d;

    goto :goto_3

    :pswitch_b
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/accounts/Account;

    goto :goto_3

    :pswitch_c
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->e(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v18

    goto :goto_3

    :pswitch_d
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_3

    :pswitch_e
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->F(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v16

    goto :goto_3

    :pswitch_f
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :pswitch_10
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_3

    :pswitch_11
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_3

    :pswitch_12
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_3

    :cond_f
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/h;

    move-object v11, v0

    invoke-direct/range {v11 .. v25}, Lc3/h;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[La3/d;[La3/d;ZIZLjava/lang/String;)V

    return-object v0

    :pswitch_13
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v3, v9

    move v4, v3

    move v6, v4

    move-object v2, v10

    move-object v5, v2

    move-object v7, v5

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    packed-switch v9, :pswitch_data_2

    invoke-static {v1, v8}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_14
    invoke-static {v1, v8}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v7, :cond_10

    move-object v7, v10

    goto :goto_4

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    add-int/2addr v8, v7

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v9

    goto :goto_4

    :pswitch_15
    invoke-static {v1, v8}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_4

    :pswitch_16
    invoke-static {v1, v8}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v5, :cond_11

    move-object v5, v10

    goto :goto_4

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    add-int/2addr v8, v5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v5, v9

    goto :goto_4

    :pswitch_17
    invoke-static {v1, v8}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_4

    :pswitch_18
    invoke-static {v1, v8}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_4

    :pswitch_19
    sget-object v2, Lc3/m;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v8, v2}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lc3/m;

    goto :goto_4

    :cond_12
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/g;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lc3/g;-><init>(Lc3/m;ZZ[II[I)V

    return-object v0

    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v10

    move-object v3, v2

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v11, v4

    if-eq v11, v8, :cond_16

    if-eq v11, v7, :cond_15

    if-eq v11, v6, :cond_14

    if-eq v11, v5, :cond_13

    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_13
    sget-object v3, Lc3/g;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lc3/g;

    goto :goto_5

    :cond_14
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_5

    :cond_15
    sget-object v2, La3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/a0;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [La3/d;

    goto :goto_5

    :cond_16
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->e(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v10

    goto :goto_5

    :cond_17
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/g0;

    invoke-direct {v0, v10, v2, v9, v3}, Lc3/g0;-><init>(Landroid/os/Bundle;[La3/d;ILc3/g;)V

    return-object v0

    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_1c

    if-eq v3, v7, :cond_1b

    if-eq v3, v6, :cond_1a

    if-eq v3, v5, :cond_19

    if-eq v3, v4, :cond_18

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_18
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v15

    goto :goto_6

    :cond_19
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_6

    :cond_1a
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_6

    :cond_1b
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_6

    :cond_1c
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_6

    :cond_1d
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/m;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lc3/m;-><init>(IZZII)V

    return-object v0

    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v12, v9

    move v15, v12

    move/from16 v16, v15

    move-object v13, v10

    move-object v14, v13

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_22

    if-eq v3, v7, :cond_21

    if-eq v3, v6, :cond_20

    if-eq v3, v5, :cond_1f

    if-eq v3, v4, :cond_1e

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_1e
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v16

    goto :goto_7

    :cond_1f
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_7

    :cond_20
    sget-object v3, La3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, La3/b;

    goto :goto_7

    :cond_21
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->F(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    goto :goto_7

    :cond_22
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_7

    :cond_23
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/u;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lc3/u;-><init>(ILandroid/os/IBinder;La3/b;ZZ)V

    return-object v0

    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v2, v9

    move-object v3, v10

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v11, v4

    if-eq v11, v8, :cond_27

    if-eq v11, v7, :cond_26

    if-eq v11, v6, :cond_25

    if-eq v11, v5, :cond_24

    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_24
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_8

    :cond_25
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_8

    :cond_26
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v10}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/accounts/Account;

    goto :goto_8

    :cond_27
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_8

    :cond_28
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/t;

    invoke-direct {v0, v9, v10, v2, v3}, Lc3/t;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    const/4 v4, -0x1

    move-wide v15, v2

    move-wide/from16 v17, v15

    move/from16 v22, v4

    move v12, v9

    move v13, v12

    move v14, v13

    move/from16 v21, v14

    move-object/from16 v19, v10

    move-object/from16 v20, v19

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_1f
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v22

    goto :goto_9

    :pswitch_20
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v21

    goto :goto_9

    :pswitch_21
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto :goto_9

    :pswitch_22
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_9

    :pswitch_23
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v17

    goto :goto_9

    :pswitch_24
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v15

    goto :goto_9

    :pswitch_25
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_9

    :pswitch_26
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_9

    :pswitch_27
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_9

    :cond_29
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/k;

    move-object v11, v0

    invoke-direct/range {v11 .. v22}, Lc3/k;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :pswitch_28
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    :goto_a
    move-object v2, v10

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_2c

    if-eq v4, v7, :cond_2a

    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_2a
    sget-object v2, Lc3/k;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_2b

    goto :goto_a

    :cond_2b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_b

    :cond_2c
    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_b

    :cond_2d
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lc3/n;

    invoke-direct {v0, v2, v9}, Lc3/n;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_29
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v12, v9

    move v13, v12

    move-object v14, v10

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_32

    if-eq v3, v7, :cond_31

    if-eq v3, v6, :cond_30

    if-eq v3, v5, :cond_2f

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2e

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_2e
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_c

    :cond_2f
    sget-object v3, La3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, La3/b;

    goto :goto_c

    :cond_30
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/app/PendingIntent;

    goto :goto_c

    :cond_31
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :cond_32
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_c

    :cond_33
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;La3/b;)V

    return-object v0

    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_35

    if-eq v3, v7, :cond_34

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_34
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    :cond_35
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_d

    :cond_36
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v9, v10}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lz2/e;

    invoke-direct {v1, v0}, Lz2/e;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_37

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_37
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/Intent;

    goto :goto_e

    :cond_38
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lz2/a;

    invoke-direct {v0, v10}, Lz2/a;-><init>(Landroid/content/Intent;)V

    return-object v0

    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move-wide/from16 v19, v2

    move v12, v9

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v21, v18

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_3a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_2e
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    goto :goto_f

    :pswitch_2f
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v23

    goto :goto_f

    :pswitch_30
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v2, :cond_39

    move-object/from16 v22, v10

    goto :goto_f

    :cond_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v22, v3

    goto :goto_f

    :pswitch_31
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v21

    goto :goto_f

    :pswitch_32
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v19

    goto :goto_f

    :pswitch_33
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_f

    :pswitch_34
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/net/Uri;

    goto :goto_f

    :pswitch_35
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_f

    :pswitch_36
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_f

    :pswitch_37
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_f

    :pswitch_38
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    :pswitch_39
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_f

    :cond_3a
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v11, v0

    invoke-direct/range {v11 .. v24}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3a
    new-instance v0, Lt1/e;

    invoke-direct {v0, v1}, Lt1/e;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3b
    new-instance v0, Lt1/c;

    invoke-direct {v0, v1}, Lt1/c;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3c
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3d
    new-instance v0, Landroidx/recyclerview/widget/v1;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/v1;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3e
    new-instance v0, Landroidx/recyclerview/widget/u1;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/u1;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3f
    new-instance v0, Landroidx/recyclerview/widget/z;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/z;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_40
    new-instance v0, Le0/m;

    invoke-direct {v0, v1}, Le0/m;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_41
    new-instance v0, Landroidx/appcompat/widget/w3;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/w3;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_42
    new-instance v0, Landroidx/appcompat/widget/n3;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/n3;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_43
    new-instance v0, Landroidx/appcompat/widget/t0;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/t0;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_44
    new-instance v0, Landroidx/appcompat/widget/o;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/o;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_45
    const-string v0, "inParcel"

    invoke-static {v1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/result/m;

    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Li4/f;->g(Ljava/lang/Object;)V

    check-cast v2, Landroid/content/IntentSender;

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/activity/result/m;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v0

    :pswitch_46
    new-instance v0, Landroidx/activity/result/b;

    invoke-direct {v0, v1}, Landroidx/activity/result/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :goto_10
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v2, v9

    move v3, v2

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_3f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v11, v4

    if-eq v11, v8, :cond_3e

    if-eq v11, v7, :cond_3d

    if-eq v11, v6, :cond_3c

    if-eq v11, v5, :cond_3b

    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_3b
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_11

    :cond_3c
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_11

    :cond_3d
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    :cond_3e
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_11

    :cond_3f
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, La3/t;

    invoke-direct {v0, v9, v2, v10, v3}, La3/t;-><init>(IILjava/lang/String;Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/activity/result/a;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [La3/s;

    return-object p0

    :pswitch_1
    new-array p0, p1, [La3/d;

    return-object p0

    :pswitch_2
    new-array p0, p1, [La3/b;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lc3/h;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lc3/g;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lc3/g0;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lc3/m;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lc3/u;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lc3/t;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lc3/k;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lc3/n;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lz2/e;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lz2/a;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lt1/e;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lt1/c;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/recyclerview/widget/v1;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Landroidx/recyclerview/widget/u1;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Landroidx/recyclerview/widget/z;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Le0/m;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Landroidx/appcompat/widget/w3;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Landroidx/appcompat/widget/n3;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Landroidx/appcompat/widget/t0;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Landroidx/appcompat/widget/o;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Landroidx/activity/result/m;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/activity/result/b;

    return-object p0

    :goto_0
    new-array p0, p1, [La3/t;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
