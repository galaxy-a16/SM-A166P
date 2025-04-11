.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fabricID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricID"
    .end annotation
.end field

.field private fabricPubKey:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricPubKey"
    .end annotation
.end field

.field private fabricStatus:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricStatus"
    .end annotation
.end field

.field private ftolerance:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "ftolerance"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFabricID()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricID"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;->fabricID:Ljava/lang/String;

    return-object p0
.end method

.method public getFabricPubKey()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricPubKey"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;->fabricPubKey:Ljava/lang/String;

    return-object p0
.end method

.method public getFabricStatus()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricStatus"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;->fabricStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getFtolerance()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "ftolerance"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;->ftolerance:I

    return p0
.end method
