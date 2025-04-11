.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;
.super Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
.source "VcnGatewayConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method public onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 901
    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->getNetwork()Landroid/net/Network;

    move-result-object p1

    .line 902
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data stall suspected on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 903
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;

    invoke-direct {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;-><init>(Landroid/net/Network;)V

    const/16 p1, 0xd

    const/high16 v1, -0x80000000

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method
