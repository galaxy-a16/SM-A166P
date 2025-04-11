.class public final La3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/measurement/internal/o;Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/o;->d:J

    invoke-static {p1, p2, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static b(Lcom/google/android/gms/measurement/internal/r5;Landroid/os/Parcel;)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/r5;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/r5;->c:J

    invoke-static {p1, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r5;->d:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x80004

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r5;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r5;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/r5;->g:Ljava/lang/Double;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x80008

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, La3/v;->a:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    new-instance v0, Lcom/google/android/material/timepicker/g;

    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/g;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lg4/h;

    invoke-direct {v0, v1}, Lg4/h;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/n;->a(II)Lcom/google/android/material/datepicker/n;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/material/datepicker/e;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/e;-><init>(J)V

    return-object v0

    :pswitch_4
    const-class v0, Lcom/google/android/material/datepicker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/material/datepicker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/datepicker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/datepicker/n;

    const-class v0, Lcom/google/android/material/datepicker/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/datepicker/b;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v0, Lcom/google/android/material/datepicker/c;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/datepicker/c;-><init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/b;Lcom/google/android/material/datepicker/n;I)V

    return-object v0

    :pswitch_5
    new-instance v0, Lb4/b;

    invoke-direct {v0, v1}, Lb4/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lv3/b;

    invoke-direct {v0, v1}, Lv3/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v6, :cond_2

    if-eq v4, v8, :cond_1

    if-eq v4, v5, :cond_0

    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lc3/u;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lc3/u;

    goto :goto_0

    :cond_1
    sget-object v4, La3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, La3/b;

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lp3/i;

    invoke-direct {v0, v7, v9, v2}, Lp3/i;-><init>(ILa3/b;Lc3/u;)V

    return-object v0

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v6, :cond_5

    if-eq v3, v8, :cond_4

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    sget-object v3, Lc3/t;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lc3/t;

    goto :goto_1

    :cond_5
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_1

    :cond_6
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lp3/h;

    invoke-direct {v0, v7, v9}, Lp3/h;-><init>(ILc3/t;)V

    return-object v0

    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v9

    move-object v3, v2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v6, :cond_8

    if-eq v5, v8, :cond_7

    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_7
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    invoke-static {v1, v4}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v2, :cond_9

    move-object v2, v9

    goto :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v2, v5

    goto :goto_2

    :cond_a
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lp3/g;

    invoke-direct {v0, v2, v3}, Lp3/g;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v2, v7

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v6, :cond_d

    if-eq v4, v8, :cond_c

    if-eq v4, v5, :cond_b

    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_b
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/content/Intent;

    goto :goto_3

    :cond_c
    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_3

    :cond_d
    invoke-static {v1, v3}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_3

    :cond_e
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lp3/b;

    invoke-direct {v0, v7, v2, v9}, Lp3/b;-><init>(IILandroid/content/Intent;)V

    return-object v0

    :pswitch_b
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    const-string v5, ""

    const-wide/32 v10, -0x80000000

    move-wide/from16 v17, v2

    move-wide/from16 v19, v17

    move-wide/from16 v27, v19

    move-wide/from16 v29, v27

    move-wide/from16 v36, v29

    move-object/from16 v40, v5

    move-object/from16 v41, v40

    move/from16 v22, v6

    move/from16 v32, v22

    move/from16 v23, v7

    move/from16 v31, v23

    move/from16 v33, v31

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v21, v16

    move-object/from16 v26, v21

    move-object/from16 v34, v26

    move-object/from16 v35, v34

    move-object/from16 v38, v35

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-wide/from16 v24, v10

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    :pswitch_c
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_d
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v42

    goto :goto_4

    :pswitch_e
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v41

    goto :goto_4

    :pswitch_f
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    goto :goto_4

    :pswitch_10
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v39

    goto :goto_4

    :pswitch_11
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_f

    move-object/from16 v38, v9

    goto :goto_4

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v38, v5

    goto :goto_4

    :pswitch_12
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v36

    goto :goto_4

    :pswitch_13
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v35, v9

    goto :goto_4

    :cond_10
    invoke-static {v1, v2, v4}, Lkotlinx/coroutines/a0;->U(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    move v2, v6

    goto :goto_5

    :cond_11
    move v2, v7

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    goto :goto_4

    :pswitch_14
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v34

    goto :goto_4

    :pswitch_15
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v33

    goto :goto_4

    :pswitch_16
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v32

    goto :goto_4

    :pswitch_17
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v31

    goto :goto_4

    :pswitch_18
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v29

    goto :goto_4

    :pswitch_19
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v27

    goto :goto_4

    :pswitch_1a
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v26

    goto :goto_4

    :pswitch_1b
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v24

    goto/16 :goto_4

    :pswitch_1c
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v23

    goto/16 :goto_4

    :pswitch_1d
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v22

    goto/16 :goto_4

    :pswitch_1e
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    :pswitch_1f
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v19

    goto/16 :goto_4

    :pswitch_20
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v17

    goto/16 :goto_4

    :pswitch_21
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    :pswitch_22
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :pswitch_23
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    :pswitch_24
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    :cond_12
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/w5;

    move-object v12, v0

    invoke-direct/range {v12 .. v42}, Lcom/google/android/gms/measurement/internal/w5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move-wide v13, v2

    move-object v2, v9

    move-object v3, v2

    move-object v5, v3

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    :goto_6
    move-object/from16 v18, v10

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    const/16 v12, 0x8

    packed-switch v11, :pswitch_data_2

    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_26
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v2

    if-nez v2, :cond_13

    move-object v2, v9

    goto :goto_7

    :cond_13
    invoke-static {v1, v2, v12}, Lkotlinx/coroutines/a0;->U(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_7

    :pswitch_27
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    :pswitch_28
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :pswitch_29
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v6

    if-nez v6, :cond_14

    move-object v6, v9

    goto :goto_7

    :cond_14
    invoke-static {v1, v6, v4}, Lkotlinx/coroutines/a0;->U(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_7

    :pswitch_2a
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->I(Landroid/os/Parcel;I)I

    move-result v5

    if-nez v5, :cond_15

    move-object v5, v9

    goto :goto_7

    :cond_15
    invoke-static {v1, v5, v12}, Lkotlinx/coroutines/a0;->U(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_7

    :pswitch_2b
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v13

    move-object/from16 v10, v18

    goto :goto_6

    :pswitch_2c
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :pswitch_2d
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->G(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_7

    :cond_16
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/r5;

    move-object v10, v0

    move v11, v7

    move-object v12, v3

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Lcom/google/android/gms/measurement/internal/r5;-><init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0

    :pswitch_2e
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move-wide v14, v2

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_1a

    if-eq v3, v5, :cond_19

    if-eq v3, v4, :cond_18

    const/4 v6, 0x5

    if-eq v3, v6, :cond_17

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_17
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_8

    :cond_18
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    :cond_19
    sget-object v3, Lcom/google/android/gms/measurement/internal/n;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/measurement/internal/n;

    goto :goto_8

    :cond_1a
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_1b
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/o;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    return-object v0

    :pswitch_2f
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_1c

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_1c
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->e(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v9

    goto :goto_9

    :cond_1d
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v0, v9}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :pswitch_30
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move-wide v14, v2

    move-wide/from16 v19, v14

    move-wide/from16 v22, v19

    move/from16 v16, v7

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v17, v13

    move-object/from16 v18, v17

    move-object/from16 v21, v18

    move-object/from16 v24, v21

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_31
    sget-object v3, Lcom/google/android/gms/measurement/internal/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/google/android/gms/measurement/internal/o;

    goto :goto_a

    :pswitch_32
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v22

    goto :goto_a

    :pswitch_33
    sget-object v3, Lcom/google/android/gms/measurement/internal/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/google/android/gms/measurement/internal/o;

    goto :goto_a

    :pswitch_34
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v19

    goto :goto_a

    :pswitch_35
    sget-object v3, Lcom/google/android/gms/measurement/internal/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/gms/measurement/internal/o;

    goto :goto_a

    :pswitch_36
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_a

    :pswitch_37
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v16

    goto :goto_a

    :pswitch_38
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->H(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_a

    :pswitch_39
    sget-object v3, Lcom/google/android/gms/measurement/internal/r5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/a0;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/gms/measurement/internal/r5;

    goto :goto_a

    :pswitch_3a
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :pswitch_3b
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_1e
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    move-object v10, v0

    invoke-direct/range {v10 .. v24}, Lcom/google/android/gms/measurement/internal/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;)V

    return-object v0

    :pswitch_3c
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    move v2, v7

    move-object v3, v9

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    if-eq v11, v6, :cond_22

    if-eq v11, v8, :cond_21

    if-eq v11, v5, :cond_20

    if-eq v11, v4, :cond_1f

    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_1f
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_b

    :cond_20
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->D(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_b

    :cond_21
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->F(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_b

    :cond_22
    invoke-static {v1, v10}, Lkotlinx/coroutines/a0;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_23
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, La3/u;

    invoke-direct {v0, v9, v3, v7, v2}, La3/u;-><init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V

    return-object v0

    :goto_c
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->P(Landroid/os/Parcel;)I

    move-result v0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_24

    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->L(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_24
    invoke-static {v1, v2}, Lkotlinx/coroutines/a0;->e(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v9

    goto :goto_d

    :cond_25
    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/firebase/messaging/p;

    invoke-direct {v0, v9}, Lcom/google/firebase/messaging/p;-><init>(Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_25
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

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_c
        :pswitch_15
        :pswitch_14
        :pswitch_c
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, La3/v;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/material/timepicker/g;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lg4/h;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/material/datepicker/n;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/material/datepicker/e;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/material/datepicker/c;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lb4/b;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lv3/b;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lp3/i;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lp3/h;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lp3/g;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lp3/b;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/measurement/internal/w5;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/measurement/internal/r5;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/measurement/internal/o;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/measurement/internal/n;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/measurement/internal/c;

    return-object p0

    :pswitch_10
    new-array p0, p1, [La3/u;

    return-object p0

    :goto_0
    new-array p0, p1, [Lcom/google/firebase/messaging/p;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
