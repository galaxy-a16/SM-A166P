.class public Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "BiometricFrameworkStatsLogger.java"


# static fields
.field public static final sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;


# direct methods
.method public static synthetic $r8$lambda$JKw84K-QPR6gWKtYMOw8OHoZe9w(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZILjava/lang/Float;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->lambda$authenticate$0(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZILjava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYQU3-TfXt2fUfpWfjYNqqwvwgs(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->lambda$toProtoWakeReasonDetails$1(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y0xrlTF93nBKcU8YLmcmrqwkFXQ(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->lambda$toProtoWakeReasonDetails$2(I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-direct {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static foldType(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-object v0
.end method

.method private synthetic lambda$authenticate$0(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZILjava/lang/Float;)V
    .locals 12

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZIF)V

    return-void
.end method

.method public static synthetic lambda$toProtoWakeReasonDetails$1(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$toProtoWakeReasonDetails$2(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static orientationType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static sessionType(B)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/OperationContextExt;->getWakeReason()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toProtoWakeReasonDetails(Landroid/hardware/biometrics/common/AuthenticateReason;)I
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getTag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getFaceAuthenticateReason()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetailsFromFace(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetails(Landroid/hardware/biometrics/common/AuthenticateReason;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public static toProtoWakeReasonDetailsFromFace(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public acquired(Lcom/android/server/biometrics/log/OperationContextExt;IIIZIII)V
    .locals 19

    move/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v2, p8

    const/16 v0, 0x57

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v3

    const/4 v9, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getId()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getReason()B

    move-result v11

    invoke-static {v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isAod()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isDisplayOn()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getDockState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getOrientation()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getFoldState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->foldType(I)I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getOrderAndIncrement()I

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    move-result v18

    invoke-static/range {v0 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZIIIZZIIIII)V

    return-void
.end method

.method public authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZIF)V
    .locals 22

    move/from16 v1, p2

    move/from16 v4, p4

    move/from16 v9, p5

    move/from16 v6, p8

    move/from16 v5, p9

    move/from16 v2, p10

    move/from16 v11, p11

    const/16 v0, 0x58

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v3

    move-object/from16 v7, p0

    move-wide/from16 v12, p6

    invoke-virtual {v7, v12, v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v7

    const/4 v10, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getId()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getReason()B

    move-result v13

    invoke-static {v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isAod()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isDisplayOn()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getDockState()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getOrientation()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getFoldState()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->foldType(I)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getOrderAndIncrement()I

    move-result v19

    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    move-result v20

    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I

    move-result-object v21

    invoke-static/range {v0 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIFIIZZIIIII[I)V

    return-void
.end method

.method public authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZILcom/android/server/biometrics/log/ALSProbe;)V
    .locals 13

    new-instance v12, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZI)V

    const/4 v0, 0x0

    move-object/from16 v1, p11

    invoke-virtual {v1, v12, v0}, Lcom/android/server/biometrics/log/ALSProbe;->awaitNextLux(Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public enroll(IIIIJZF)V
    .locals 8

    const/16 v0, 0xb8

    move-object v1, p0

    move-wide v2, p5

    invoke-virtual {p0, p5, p6}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v3

    const/4 v6, -0x1

    move v1, p1

    move v2, p4

    move v5, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZIF)V

    return-void
.end method

.method public error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V
    .locals 22

    move/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v2, p10

    const/16 v0, 0x59

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v3

    move-object/from16 v9, p0

    move-wide/from16 v10, p6

    invoke-virtual {v9, v10, v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v9

    const/4 v11, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getId()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getReason()B

    move-result v13

    invoke-static {v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isAod()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isDisplayOn()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getDockState()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getOrientation()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getFoldState()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->foldType(I)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getOrderAndIncrement()I

    move-result v19

    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    move-result v20

    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I

    move-result-object v21

    invoke-static/range {v0 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJIIIZZIIIII[I)V

    return-void
.end method

.method public reportUnknownTemplateEnrolledFramework(I)V
    .locals 2

    const/4 p0, 0x2

    const/4 v0, -0x1

    const/16 v1, 0x94

    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public reportUnknownTemplateEnrolledHal(I)V
    .locals 2

    const/4 p0, 0x3

    const/4 v0, -0x1

    const/16 v1, 0x94

    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public final sanitizeLatency(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found a negative latency : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricFrameworkStatsLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    return-wide p1
.end method
