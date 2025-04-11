.class public final Lio/netty/handler/ipfilter/IpSubnetFilterRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ipfilter/IpFilterRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;,
        Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;
    }
.end annotation


# instance fields
.field private final filterRule:Lio/netty/handler/ipfilter/IpFilterRule;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/netty/handler/ipfilter/IpFilterRuleType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/SocketUtils;->addressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->selectFilterRule(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)Lio/netty/handler/ipfilter/IpFilterRule;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ipAddress"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->selectFilterRule(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)Lio/netty/handler/ipfilter/IpFilterRule;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;

    return-void
.end method

.method private static selectFilterRule(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)Lio/netty/handler/ipfilter/IpFilterRule;
    .locals 2

    const-string v0, "ipAddress"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ruleType"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/net/Inet4Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;

    check-cast p0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;-><init>(Ljava/net/Inet4Address;ILio/netty/handler/ipfilter/IpFilterRuleType;Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    new-instance v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;

    check-cast p0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;-><init>(Ljava/net/Inet6Address;ILio/netty/handler/ipfilter/IpFilterRuleType;Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only IPv4 and IPv6 addresses are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public matches(Ljava/net/InetSocketAddress;)Z
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;

    invoke-interface {p0, p1}, Lio/netty/handler/ipfilter/IpFilterRule;->matches(Ljava/net/InetSocketAddress;)Z

    move-result p0

    return p0
.end method

.method public ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;

    invoke-interface {p0}, Lio/netty/handler/ipfilter/IpFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object p0

    return-object p0
.end method
