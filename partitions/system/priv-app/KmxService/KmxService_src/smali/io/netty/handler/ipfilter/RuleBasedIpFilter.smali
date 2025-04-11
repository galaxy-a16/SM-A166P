.class public Lio/netty/handler/ipfilter/RuleBasedIpFilter;
.super Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final rules:[Lio/netty/handler/ipfilter/IpFilterRule;


# direct methods
.method public varargs constructor <init>([Lio/netty/handler/ipfilter/IpFilterRule;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;-><init>()V

    const-string v0, "rules"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/netty/handler/ipfilter/IpFilterRule;

    iput-object p1, p0, Lio/netty/handler/ipfilter/RuleBasedIpFilter;->rules:[Lio/netty/handler/ipfilter/IpFilterRule;

    return-void
.end method


# virtual methods
.method public accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lio/netty/handler/ipfilter/RuleBasedIpFilter;->rules:[Lio/netty/handler/ipfilter/IpFilterRule;

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p1, :cond_3

    aget-object v3, p0, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3, p2}, Lio/netty/handler/ipfilter/IpFilterRule;->matches(Ljava/net/InetSocketAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lio/netty/handler/ipfilter/IpFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object p0

    sget-object p1, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne p0, p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method public bridge synthetic accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Z
    .locals 0

    .line 2
    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ipfilter/RuleBasedIpFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z

    move-result p0

    return p0
.end method
