.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# instance fields
.field public final mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;


# direct methods
.method public constructor <init>(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 0

    .line 2811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2812
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    return-void
.end method


# virtual methods
.method public getInternalAddresses()Ljava/util/List;
    .locals 0

    .line 2817
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInternalDnsServers()Ljava/util/List;
    .locals 0

    .line 2822
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
