.class public final synthetic Lcom/samsung/android/kmxservice/common/update/connector/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/a;->a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/update/connector/a;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/common/update/connector/a;->c:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/update/connector/a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/update/connector/a;->c:Landroid/os/ResultReceiver;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/a;->a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;->f(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateActivity;Ljava/util/ArrayList;Landroid/os/ResultReceiver;Landroid/content/DialogInterface;I)V

    return-void
.end method
