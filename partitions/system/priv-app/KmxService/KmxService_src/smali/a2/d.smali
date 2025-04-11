.class public final La2/d;
.super La2/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La2/d;->b:I

    invoke-direct {p0}, La2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget p0, p0, La2/d;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0

    :goto_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()J
    .locals 2

    iget p0, p0, La2/d;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0

    :goto_0
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()J
    .locals 2

    iget p0, p0, La2/d;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0

    :goto_0
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/CharSequence;IZJIZI)J
    .locals 5

    const/4 v0, 0x0

    iget p0, p0, La2/d;->b:I

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    cmp-long p0, p4, v3

    if-nez p0, :cond_1

    if-eqz p3, :cond_0

    const-wide/high16 p3, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x134

    const/16 v3, -0x145

    if-eqz p7, :cond_2

    if-gt v3, p8, :cond_3

    if-gt p8, p0, :cond_3

    invoke-static {p3, p8, p4, p5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->t(ZIJ)D

    move-result-wide p6

    add-long/2addr p4, v1

    invoke-static {p3, p8, p4, p5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->t(ZIJ)D

    move-result-wide p3

    invoke-static {p6, p7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_3

    cmpl-double p0, p3, p6

    if-nez p0, :cond_3

    move-wide p3, p6

    goto :goto_0

    :cond_2
    if-gt v3, p6, :cond_3

    if-gt p6, p0, :cond_3

    invoke-static {p3, p6, p4, p5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->t(ZIJ)D

    move-result-wide p3

    goto :goto_0

    :cond_3
    const-wide/high16 p3, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    :cond_4
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    return-wide p0

    :goto_1
    cmp-long p0, p4, v3

    if-nez p0, :cond_6

    if-eqz p3, :cond_5

    const/high16 p0, -0x80000000

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    goto :goto_2

    :cond_6
    const/16 p0, 0x26

    const/16 v3, -0x2d

    if-eqz p7, :cond_7

    if-gt v3, p8, :cond_8

    if-gt p8, p0, :cond_8

    invoke-static {p3, p8, p4, p5}, Lfc/c;->k(ZIJ)F

    move-result p0

    add-long/2addr p4, v1

    invoke-static {p3, p8, p4, p5}, Lfc/c;->k(ZIJ)F

    move-result p3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_8

    cmpl-float p3, p3, p0

    if-nez p3, :cond_8

    goto :goto_2

    :cond_7
    if-gt v3, p6, :cond_8

    if-gt p6, p0, :cond_8

    invoke-static {p3, p6, p4, p5}, Lfc/c;->k(ZIJ)F

    move-result p0

    goto :goto_2

    :cond_8
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :cond_9
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/CharSequence;IZJIZI)J
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p8

    const/4 v7, 0x0

    move-object/from16 v8, p0

    iget v8, v8, La2/d;->b:I

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    int-to-long v13, v5

    int-to-long v5, v6

    cmp-long v8, v3, v11

    if-nez v8, :cond_1

    if-eqz v2, :cond_0

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v11, 0x3ff

    const-wide/16 v15, -0x3fe

    if-eqz p7, :cond_2

    cmp-long v8, v15, v5

    if-gtz v8, :cond_3

    cmp-long v8, v5, v11

    if-gtz v8, :cond_3

    long-to-int v5, v5

    invoke-static {v2, v5, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->u(ZIJ)D

    move-result-wide v11

    add-long/2addr v3, v9

    invoke-static {v2, v5, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->u(ZIJ)D

    move-result-wide v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3

    cmpl-double v2, v2, v11

    if-nez v2, :cond_3

    move-wide v2, v11

    goto :goto_0

    :cond_2
    cmp-long v5, v15, v13

    if-gtz v5, :cond_3

    cmp-long v5, v13, v11

    if-gtz v5, :cond_3

    long-to-int v5, v13

    invoke-static {v2, v5, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->u(ZIJ)D

    move-result-wide v2

    goto :goto_0

    :cond_3
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v7, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0

    :goto_1
    cmp-long v8, v3, v11

    if-nez v8, :cond_6

    if-eqz v2, :cond_5

    const/high16 v2, -0x80000000

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/16 v8, 0x7f

    const/16 v11, -0x7e

    if-eqz p7, :cond_7

    if-gt v11, v6, :cond_8

    if-gt v6, v8, :cond_8

    invoke-static {v2, v6, v3, v4}, Lfc/c;->l(ZIJ)F

    move-result v5

    add-long/2addr v3, v9

    invoke-static {v2, v6, v3, v4}, Lfc/c;->l(ZIJ)F

    move-result v2

    float-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    move v2, v5

    goto :goto_2

    :cond_7
    if-gt v11, v5, :cond_8

    if-gt v5, v8, :cond_8

    invoke-static {v2, v5, v3, v4}, Lfc/c;->l(ZIJ)F

    move-result v2

    goto :goto_2

    :cond_8
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0, v7, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :cond_9
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
