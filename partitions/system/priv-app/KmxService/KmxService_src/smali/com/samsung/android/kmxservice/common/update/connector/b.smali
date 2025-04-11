.class public final synthetic Lcom/samsung/android/kmxservice/common/update/connector/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;

.field public final synthetic b:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/b;->a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/update/connector/b;->b:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/update/connector/b;->a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/b;->b:Landroid/os/ResultReceiver;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;->e(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;Landroid/os/ResultReceiver;Landroid/content/DialogInterface;I)V

    return-void
.end method
