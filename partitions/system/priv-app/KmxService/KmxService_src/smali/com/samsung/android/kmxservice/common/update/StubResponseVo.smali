.class public final Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseVo$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/g;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$Companion;


# instance fields
.field private lastCheckTime:J

.field private serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->Companion:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(IJLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;Lkotlinx/serialization/internal/i1;)V
    .locals 14

    .line 2
    move-object v0, p0

    move v1, p1

    and-int/lit8 v2, v1, 0x0

    if-nez v2, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p2

    :goto_0
    iput-wide v2, v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p4

    :goto_1
    iput-object v1, v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    invoke-static {p1, v0}, Ll9/b;->J0(ILkotlinx/serialization/descriptors/g;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)V
    .locals 1

    .line 3
    const-string v0, "serverData"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    iput-object p3, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;ILkotlin/jvm/internal/k;)V
    .locals 15

    .line 4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p1

    :goto_0
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    move-object v3, p0

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object/from16 v2, p3

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/kmxservice/common/update/StubResponseVo;JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;ILjava/lang/Object;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->copy(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/samsung/android/kmxservice/common/update/StubResponseVo;Lzb/b;Lkotlinx/serialization/descriptors/g;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "self"

    invoke-static {v0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "output"

    invoke-static {v1, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "serialDesc"

    invoke-static {v2, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p2}, Lzb/b;->q(Lkotlinx/serialization/descriptors/g;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v6, v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    iget-wide v6, v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    move-object v3, v1

    check-cast v3, Lp1/f;

    invoke-virtual {v3, v2, v4}, Lp1/f;->w(Lkotlinx/serialization/descriptors/g;I)V

    invoke-virtual {v3, v6, v7}, Lp1/f;->o(J)V

    :cond_2
    invoke-interface/range {p1 .. p2}, Lzb/b;->q(Lkotlinx/serialization/descriptors/g;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    new-instance v15, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1ff

    const/16 v18, 0x0

    move-object v6, v15

    move-object v4, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v6 .. v17}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    invoke-static {v3, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    sget-object v3, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;

    iget-object v0, v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    check-cast v1, Lp1/f;

    invoke-virtual {v1, v2, v5, v3, v0}, Lp1/f;->y(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/c;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    return-wide v0
.end method

.method public final component2()Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    return-object p0
.end method

.method public final copy(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
    .locals 0

    const-string p0, "serverData"

    invoke-static {p3, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    iget-wide v3, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    iget-wide v5, p1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    iget-object p1, p1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    invoke-static {p0, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLastCheckTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    return-wide v0
.end method

.method public final getServerData()Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setLastCheckTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    return-void
.end method

.method public final setServerData(Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->lastCheckTime:J

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->serverData:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StubResponseVo(lastCheckTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", serverData="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
