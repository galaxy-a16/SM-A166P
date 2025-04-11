.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;
.super Lcom/android/server/knox/dar/sdp/SdpManagerInternal;
.source "SdpManagerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .locals 0

    .line 4704
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method


# virtual methods
.method public getMasterKeyVersion(I)I
    .locals 0

    .line 4733
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)I

    move-result p0

    return p0
.end method

.method public setMasterKeyVersion(II)V
    .locals 0

    .line 4739
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$msetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V

    return-void
.end method

.method public setSdpPolicyToPath(ILjava/lang/String;)Z
    .locals 0

    .line 4723
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmContext(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 4724
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "setSdpPolicyToPath failed!"

    .line 4725
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateMasterKey([B[BI)Z
    .locals 0

    .line 4744
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mreWrapSdpKeys(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[B[BI)Z

    move-result p0

    return p0
.end method
