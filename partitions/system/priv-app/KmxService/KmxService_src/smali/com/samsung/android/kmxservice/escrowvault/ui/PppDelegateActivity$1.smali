.class Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity$1;
.super Landroidx/activity/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;

    invoke-direct {p0, p2}, Landroidx/activity/s;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    const-string v0, "KMX|PppDelegateActivity"

    const-string v1, "handleOnBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->h(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;)V

    return-void
.end method
