.class public abstract Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activateService:I = 0x3

.field static final TRANSACTION_deactivateService:I = 0x4

.field static final TRANSACTION_destroyService:I = 0x5

.field static final TRANSACTION_detectFabricAbnormality:I = 0xb

.field static final TRANSACTION_detectMemberAbnormality:I = 0xd

.field static final TRANSACTION_detectTrustedFabricAbnormality:I = 0xc

.field static final TRANSACTION_getDashboardInfoSelf:I = 0xa

.field static final TRANSACTION_getFabricDashboardInfo:I = 0x8

.field static final TRANSACTION_getMemberDashboardInfo:I = 0x9

.field static final TRANSACTION_getSTMemberSecurityStatus:I = 0x12

.field static final TRANSACTION_getSTMembersSecurityStatus:I = 0x11

.field static final TRANSACTION_handlePushEvents:I = 0xe

.field static final TRANSACTION_readDataDashboard:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_signedInSamsungAccount:I = 0xf

.field static final TRANSACTION_syncTrustChain:I = 0x10

.field static final TRANSACTION_unRegisterCallback:I = 0x2

.field static final TRANSACTION_writeDataDashboard:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.kmxservice.sdk.trustchain.IChainServiceInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.kmxservice.sdk.trustchain.IChainServiceInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.samsung.android.kmxservice.sdk.trustchain.IChainServiceInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getSTMemberSecurityStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getSTMembersSecurityStatus()V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->syncTrustChain()V

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->signedInSamsungAccount()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->handlePushEvents(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->detectMemberAbnormality(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->detectTrustedFabricAbnormality(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->detectFabricAbnormality()V

    goto :goto_0

    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getDashboardInfoSelf()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getMemberDashboardInfo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getFabricDashboardInfo()V

    goto :goto_0

    :pswitch_b
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->readDataDashboard()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->writeDataDashboard(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :pswitch_d
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->destroyService()V

    goto :goto_0

    :pswitch_e
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->deactivateService()V

    goto :goto_0

    :pswitch_f
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->activateService()V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->unRegisterCallback(I)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->registerCallback(ILcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
