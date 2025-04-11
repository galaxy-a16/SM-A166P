.class public interface abstract Landroid/net/INetd;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final CLAT_MARK:I = -0x21523e59

.field public static final CONF:I = 0x1

.field public static final DUMMY_NET_ID:I = 0x33

.field public static final FIREWALL_ALLOWLIST:I = 0x0

.field public static final FIREWALL_BLACKLIST:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FIREWALL_CHAIN_DOZABLE:I = 0x1

.field public static final FIREWALL_CHAIN_NONE:I = 0x0

.field public static final FIREWALL_CHAIN_POWERSAVE:I = 0x3

.field public static final FIREWALL_CHAIN_RESTRICTED:I = 0x4

.field public static final FIREWALL_CHAIN_STANDBY:I = 0x2

.field public static final FIREWALL_DENYLIST:I = 0x1

.field public static final FIREWALL_RULE_ALLOW:I = 0x1

.field public static final FIREWALL_RULE_DENY:I = 0x2

.field public static final FIREWALL_WHITELIST:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HASH:Ljava/lang/String; = "38614f80a23b92603d4851177e57c460aec1b606"

.field public static final IF_FLAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final IF_FLAG_LOOPBACK:Ljava/lang/String; = "loopback"

.field public static final IF_FLAG_MULTICAST:Ljava/lang/String; = "multicast"

.field public static final IF_FLAG_POINTOPOINT:Ljava/lang/String; = "point-to-point"

.field public static final IF_FLAG_RUNNING:Ljava/lang/String; = "running"

.field public static final IF_STATE_DOWN:Ljava/lang/String; = "down"

.field public static final IF_STATE_UP:Ljava/lang/String; = "up"

.field public static final IPSEC_DIRECTION_IN:I = 0x0

.field public static final IPSEC_DIRECTION_OUT:I = 0x1

.field public static final IPSEC_INTERFACE_PREFIX:Ljava/lang/String; = "ipsec"

.field public static final IPV4:I = 0x4

.field public static final IPV6:I = 0x6

.field public static final IPV6_ADDR_GEN_MODE_DEFAULT:I = 0x0

.field public static final IPV6_ADDR_GEN_MODE_EUI64:I = 0x0

.field public static final IPV6_ADDR_GEN_MODE_NONE:I = 0x1

.field public static final IPV6_ADDR_GEN_MODE_RANDOM:I = 0x3

.field public static final IPV6_ADDR_GEN_MODE_STABLE_PRIVACY:I = 0x2

.field public static final LOCAL_NET_ID:I = 0x63

.field public static final NEIGH:I = 0x2

.field public static final NEXTHOP_NONE:Ljava/lang/String; = ""

.field public static final NEXTHOP_THROW:Ljava/lang/String; = "throw"

.field public static final NEXTHOP_UNREACHABLE:Ljava/lang/String; = "unreachable"

.field public static final NO_PERMISSIONS:I = 0x0

.field public static final PENALTY_POLICY_ACCEPT:I = 0x1

.field public static final PENALTY_POLICY_LOG:I = 0x2

.field public static final PENALTY_POLICY_REJECT:I = 0x3

.field public static final PERMISSION_INTERNET:I = 0x4

.field public static final PERMISSION_NETWORK:I = 0x1

.field public static final PERMISSION_NONE:I = 0x0

.field public static final PERMISSION_SYSTEM:I = 0x2

.field public static final PERMISSION_UNINSTALLED:I = -0x1

.field public static final PERMISSION_UPDATE_DEVICE_STATS:I = 0x8

.field public static final UNREACHABLE_NET_ID:I = 0x34

.field public static final VERSION:I = 0xd


# virtual methods
.method public abstract bandwidthAddNaughtyApp(I)V
.end method

.method public abstract bandwidthAddNiceApp(I)V
.end method

.method public abstract bandwidthEnableDataSaver(Z)Z
.end method

.method public abstract bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
.end method

.method public abstract bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
.end method

.method public abstract bandwidthRemoveNaughtyApp(I)V
.end method

.method public abstract bandwidthRemoveNiceApp(I)V
.end method

.method public abstract bandwidthSetGlobalAlert(J)V
.end method

.method public abstract bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
.end method

.method public abstract bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
.end method

.method public abstract clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clatdStop(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
.end method

.method public abstract firewallEnableChildChain(IZ)V
.end method

.method public abstract firewallRemoveUidInterfaceRules([I)V
.end method

.method public abstract firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
.end method

.method public abstract firewallSetFirewallType(I)V
.end method

.method public abstract firewallSetInterfaceRule(Ljava/lang/String;I)V
.end method

.method public abstract firewallSetUidRule(III)V
.end method

.method public abstract getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getOemNetd()Landroid/os/IBinder;
.end method

.method public abstract getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract interfaceClearAddrs(Ljava/lang/String;)V
.end method

.method public abstract interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
.end method

.method public abstract interfaceGetList()[Ljava/lang/String;
.end method

.method public abstract interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
.end method

.method public abstract interfaceSetEnableIPv6(Ljava/lang/String;Z)V
.end method

.method public abstract interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
.end method

.method public abstract interfaceSetMtu(Ljava/lang/String;I)V
.end method

.method public abstract ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
.end method

.method public abstract ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
.end method

.method public abstract ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public abstract ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
.end method

.method public abstract ipSecDeleteSecurityPolicy(IIIIII)V
.end method

.method public abstract ipSecMigrate(Landroid/net/IpSecMigrateInfoParcel;)V
.end method

.method public abstract ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract ipSecRemoveTunnelInterface(Ljava/lang/String;)V
.end method

.method public abstract ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
.end method

.method public abstract ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
.end method

.method public abstract ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public abstract ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ipfwdDisableForwarding(Ljava/lang/String;)V
.end method

.method public abstract ipfwdEnableForwarding(Ljava/lang/String;)V
.end method

.method public abstract ipfwdEnabled()Z
.end method

.method public abstract ipfwdGetRequesterList()[Ljava/lang/String;
.end method

.method public abstract ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isAlive()Z
.end method

.method public abstract networkAddInterface(ILjava/lang/String;)V
.end method

.method public abstract networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
.end method

.method public abstract networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
.end method

.method public abstract networkCanProtect(I)Z
.end method

.method public abstract networkClearDefault()V
.end method

.method public abstract networkClearPermissionForUser([I)V
.end method

.method public abstract networkCreate(Landroid/net/NativeNetworkConfig;)V
.end method

.method public abstract networkCreatePhysical(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract networkCreateVpn(IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract networkDestroy(I)V
.end method

.method public abstract networkGetDefault()I
.end method

.method public abstract networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract networkRemoveInterface(ILjava/lang/String;)V
.end method

.method public abstract networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
.end method

.method public abstract networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
.end method

.method public abstract networkSetDefault(I)V
.end method

.method public abstract networkSetPermissionForNetwork(II)V
.end method

.method public abstract networkSetPermissionForUser(I[I)V
.end method

.method public abstract networkSetProtectAllow(I)V
.end method

.method public abstract networkSetProtectDeny(I)V
.end method

.method public abstract networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
.end method

.method public abstract registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
.end method

.method public abstract setIPv6AddrGenMode(Ljava/lang/String;I)V
.end method

.method public abstract setNetworkAllowlist([Landroid/net/netd/aidl/NativeUidRangeConfig;)V
.end method

.method public abstract setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract socketDestroy([Landroid/net/UidRangeParcel;[I)V
.end method

.method public abstract strictUidCleartextPenalty(II)V
.end method

.method public abstract tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract tetherApplyDnsInterfaces()Z
.end method

.method public abstract tetherDnsList()[Ljava/lang/String;
.end method

.method public abstract tetherDnsSet(I[Ljava/lang/String;)V
.end method

.method public abstract tetherGetStats()[Landroid/net/TetherStatsParcel;
.end method

.method public abstract tetherInterfaceAdd(Ljava/lang/String;)V
.end method

.method public abstract tetherInterfaceList()[Ljava/lang/String;
.end method

.method public abstract tetherInterfaceRemove(Ljava/lang/String;)V
.end method

.method public abstract tetherIsEnabled()Z
.end method

.method public abstract tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tetherOffloadSetInterfaceQuota(IJ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract tetherStart([Ljava/lang/String;)V
.end method

.method public abstract tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
.end method

.method public abstract tetherStop()V
.end method

.method public abstract trafficSetNetPermForUids(I[I)V
.end method

.method public abstract trafficSwapActiveStatsMap()V
.end method

.method public abstract wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
.end method
