.class public Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-$$Nest$mevaluateNetworkFromDatabase(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    return-void
.end method
