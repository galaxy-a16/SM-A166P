.class public interface abstract Lcom/android/internal/net/IOemNetd;
.super Ljava/lang/Object;
.source "IOemNetd.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "com$android$internal$net$IOemNetd"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/IOemNetd;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addApeRule(ZLjava/lang/String;I)I
.end method

.method public abstract addIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
.end method

.method public abstract addMnxbRule(ZLjava/lang/String;I)I
.end method

.method public abstract addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addMptcpLinkIface(Ljava/lang/String;)V
.end method

.method public abstract addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract addUserToNwFilterRange(I)V
.end method

.method public abstract cleanAllBlock()V
.end method

.method public abstract cleanBlockPorts()V
.end method

.method public abstract clearEbpfMap(I)V
.end method

.method public abstract clearKnoxNwFilterProxyEntries()V
.end method

.method public abstract clearNetworkFilterEntries()V
.end method

.method public abstract clearPriorityMap()I
.end method

.method public abstract delIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
.end method

.method public abstract delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract disableMptcpMode()V
.end method

.method public abstract disableTlsPacketTracing(Ljava/lang/String;)I
.end method

.method public abstract enableIpOptionModification(Z)V
.end method

.method public abstract enableKnoxVpnFlagForTether(Z)V
.end method

.method public abstract enableMptcpModes(Ljava/lang/String;)V
.end method

.method public abstract enablePortInfoEntries(IIZ)V
.end method

.method public abstract enableTlsPacketTracing(Ljava/lang/String;)I
.end method

.method public abstract exemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V
.end method

.method public abstract firewallBuild()V
.end method

.method public abstract firewallSetRuleMobileData(IZ)V
.end method

.method public abstract firewallSetRuleWifi(IZ)V
.end method

.method public abstract getDataUsage(Ljava/lang/String;Ljava/util/List;)[Landroid/net/MBBStatsParcel;
.end method

.method public abstract getMhsTrafficStats()[Landroid/net/UidStatsParcel;
.end method

.method public abstract getNetworkFilterTcpV4Entry(I)Ljava/lang/String;
.end method

.method public abstract getNetworkFilterTcpV6Entry(I)Ljava/lang/String;
.end method

.method public abstract getNetworkFilterUdpV6Entry(I)Ljava/lang/String;
.end method

.method public abstract getNwFilterNetId()I
.end method

.method public abstract getTotalDataUsage(Ljava/lang/String;)J
.end method

.method public abstract getTrafficTimeStats()Landroid/net/TrafficTimeStatsParcel;
.end method

.method public abstract getUidTrafficStats()[Landroid/net/UidStatsParcel;
.end method

.method public abstract getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;
.end method

.method public abstract gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V
.end method

.method public abstract gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V
.end method

.method public abstract hotspotOff(Ljava/lang/String;)I
.end method

.method public abstract hotspotOn(Ljava/lang/String;)I
.end method

.method public abstract interfaceSetAutoConf(Ljava/lang/String;Z)V
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isIptablesMatchEnabled(Ljava/lang/String;)I
.end method

.method public abstract isMBBPathsPresent()I
.end method

.method public abstract knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract knoxVpnBlockUserWideDnsQuery(ZI)V
.end method

.method public abstract knoxVpnDestroyBlockedKnoxNetwork()V
.end method

.method public abstract knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract knoxVpnInsertUidForDnsAuthorization([I)V
.end method

.method public abstract knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract knoxVpnRemoveUidFromDnsAuthorization()V
.end method

.method public abstract knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract l4StatsGet()[J
.end method

.method public abstract makeBlockChildChain()V
.end method

.method public abstract makeVideoCallChain()V
.end method

.method public abstract modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract networkGuardCreateChain()V
.end method

.method public abstract networkGuardDeleteChain()V
.end method

.method public abstract networkGuardDeleteWhiteListRule()V
.end method

.method public abstract networkGuardDisable()V
.end method

.method public abstract networkGuardEnable(Z)V
.end method

.method public abstract networkGuardSetProtocolAcceptRule(I)V
.end method

.method public abstract networkGuardSetUidRangeAcceptRule(II)V
.end method

.method public abstract networkGuardSetUidRule(IZZ)V
.end method

.method public abstract networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
.end method

.method public abstract pauseDevice(Ljava/lang/String;ZLjava/lang/String;J)I
.end method

.method public abstract prioDevice(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
.end method

.method public abstract prioDisable(Ljava/lang/String;)I
.end method

.method public abstract prioEnable(Ljava/lang/String;I)I
.end method

.method public abstract prioUpdate(Ljava/lang/String;I)I
.end method

.method public abstract prioritizeApp(ZI)I
.end method

.method public abstract prioritizeMnxbApp(ZI)I
.end method

.method public abstract registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V
.end method

.method public abstract registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V
.end method

.method public abstract registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V
.end method

.method public abstract removeExemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V
.end method

.method public abstract removeKnoxNwFilterProxyApp(I)V
.end method

.method public abstract removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeMptcpLinkIface(Ljava/lang/String;)V
.end method

.method public abstract removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract removeUserFromNwFilterRange(I)V
.end method

.method public abstract replaceApeRule(Ljava/lang/String;II)I
.end method

.method public abstract replaceMnxbRule(Ljava/lang/String;II)I
.end method

.method public abstract runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setAdvertiseWindowSize(I)V
.end method

.method public abstract setAllowHostAlone(Ljava/lang/String;)V
.end method

.method public abstract setAllowListIPs(Ljava/lang/String;)V
.end method

.method public abstract setBlockAllDNSPackets(Z)V
.end method

.method public abstract setBlockAllPackets()V
.end method

.method public abstract setBlockHostAlone(Ljava/lang/String;)V
.end method

.method public abstract setBlockListIPs(Ljava/lang/String;)V
.end method

.method public abstract setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setDnsCacheStatus(Z)V
.end method

.method public abstract setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setHttpProxyPort(I)V
.end method

.method public abstract setKnoxGuardExemptRule(ZLjava/lang/String;I)V
.end method

.method public abstract setKnoxNwFilterProxyApp(I)V
.end method

.method public abstract setKnoxVpn(IZ)V
.end method

.method public abstract setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract setMptcpPrivateIpRoute(ZLjava/lang/String;I)V
.end method

.method public abstract setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMtuValueMptcp(Ljava/lang/String;I)V
.end method

.method public abstract setNetworkInfo(IZI)V
.end method

.method public abstract setNwFilterNetId(I)V
.end method

.method public abstract setQboxUid(IZ)I
.end method

.method public abstract spegRestrictNetworkConnection(IZ)V
.end method

.method public abstract startQbox(Ljava/lang/String;)I
.end method

.method public abstract startTrafficStatsController(Ljava/lang/String;)I
.end method

.method public abstract startVideoStats(Ljava/lang/String;II)V
.end method

.method public abstract stopQbox()I
.end method

.method public abstract stopTrafficStatsController(Ljava/lang/String;)I
.end method

.method public abstract stopVideoStats(Ljava/lang/String;II)V
.end method

.method public abstract tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterDomainFilterEventListener()V
.end method

.method public abstract unregisterNetdTetherEventListener()V
.end method

.method public abstract updateDomainFilterCache(I[Ljava/lang/String;)V
.end method

.method public abstract updateInputFilterAppWideRules([III)V
.end method

.method public abstract updateInputFilterExemptRules(II)V
.end method

.method public abstract updateInputFilterUserWideRules([III)V
.end method

.method public abstract updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
.end method
