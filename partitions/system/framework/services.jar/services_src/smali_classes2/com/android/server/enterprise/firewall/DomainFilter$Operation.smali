.class final enum Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
.super Ljava/lang/Enum;
.source "DomainFilter.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum FLUSHLIBC:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    .locals 8

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->FLUSHLIBC:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "CLEAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "REPLACE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "CAP_PORTAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "NET_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "FLUSHLIBC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->FLUSHLIBC:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->$values()[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->$VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->$VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-object v0
.end method
