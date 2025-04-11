.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
.field mM1:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "m1"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;->mM1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getM1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;->mM1:Ljava/lang/String;

    return-object p0
.end method
