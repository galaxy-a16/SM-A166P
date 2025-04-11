.class public Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;
.super Ljava/lang/Object;
.source "KnoxNetworkFilterFirewall.java"


# instance fields
.field public actionChain:Ljava/lang/String;

.field public actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

.field public firstParam:Ljava/lang/String;

.field public jumpChain:Ljava/lang/String;

.field public secondParam:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;


# direct methods
.method public static bridge synthetic -$$Nest$fgetactionChain(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetactionType(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetfirstParam(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetjumpChain(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsecondParam(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputactionType(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    return-void
.end method
