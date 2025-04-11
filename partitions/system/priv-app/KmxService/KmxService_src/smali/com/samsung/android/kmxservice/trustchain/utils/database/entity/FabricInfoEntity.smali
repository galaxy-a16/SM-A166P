.class public Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public block_capacity:I

.field public fabric_id:Ljava/lang/String;

.field public fabric_pub_key:Ljava/lang/String;

.field public fragment_size:I

.field public ftolerance:I

.field public syncPeriod:I

.field public transaction_capacity:I

.field public updated_at:J

.field public validPeriod:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fabric_id:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->block_capacity:I

    iput p3, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->transaction_capacity:I

    iput p4, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fragment_size:I

    iput-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fabric_pub_key:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->syncPeriod:I

    iput p7, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->validPeriod:I

    iput p8, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->ftolerance:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->updated_at:J

    return-void
.end method
