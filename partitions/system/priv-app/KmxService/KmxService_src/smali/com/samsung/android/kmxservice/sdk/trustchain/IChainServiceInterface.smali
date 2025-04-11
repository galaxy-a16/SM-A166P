.class public interface abstract Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub;,
        Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.kmxservice.sdk.trustchain.IChainServiceInterface"


# virtual methods
.method public abstract activateService()V
.end method

.method public abstract deactivateService()V
.end method

.method public abstract destroyService()V
.end method

.method public abstract detectFabricAbnormality()V
.end method

.method public abstract detectMemberAbnormality(Ljava/lang/String;)V
.end method

.method public abstract detectTrustedFabricAbnormality(Ljava/lang/String;)V
.end method

.method public abstract getDashboardInfoSelf()V
.end method

.method public abstract getFabricDashboardInfo()V
.end method

.method public abstract getMemberDashboardInfo(Ljava/lang/String;)V
.end method

.method public abstract getSTMemberSecurityStatus(Ljava/lang/String;)V
.end method

.method public abstract getSTMembersSecurityStatus()V
.end method

.method public abstract handlePushEvents(Ljava/lang/String;)V
.end method

.method public abstract readDataDashboard()V
.end method

.method public abstract registerCallback(ILcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V
.end method

.method public abstract signedInSamsungAccount()V
.end method

.method public abstract syncTrustChain()V
.end method

.method public abstract unRegisterCallback(I)V
.end method

.method public abstract writeDataDashboard(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
