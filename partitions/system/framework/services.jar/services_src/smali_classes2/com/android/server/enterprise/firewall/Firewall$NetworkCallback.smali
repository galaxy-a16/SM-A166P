.class public Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Firewall.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$minitializeIpTables(Lcom/android/server/enterprise/firewall/Firewall;)V

    return-void
.end method
