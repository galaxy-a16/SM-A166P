.class public Lcom/android/server/DirEncryptService$1$1;
.super Ljava/lang/Object;
.source "DirEncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/DirEncryptService$1;

.field public final synthetic val$extras:Landroid/os/PersistableBundle;

.field public final synthetic val$resp_code:I


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    iput p2, p0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    iput-object p3, p0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    iget-object v0, v0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->-$$Nest$fgetmHelper(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    iget-object p0, p0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/DirEncryptServiceHelper;->onEventInner(ILandroid/os/PersistableBundle;)Z

    return-void
.end method
