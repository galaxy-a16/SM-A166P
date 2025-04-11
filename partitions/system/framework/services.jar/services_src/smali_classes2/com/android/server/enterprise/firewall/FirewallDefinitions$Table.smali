.class public final enum Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
.super Ljava/lang/Enum;
.source "FirewallDefinitions.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

.field public static final enum FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

.field public static final enum NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .locals 2

    .line 72
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    filled-new-array {v0, v1}, [Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    const-string v1, "FILTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 74
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    const-string v1, "NAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 72
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->$values()[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->$VALUES:[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .locals 1

    .line 72
    const-class v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->$VALUES:[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-object v0
.end method
