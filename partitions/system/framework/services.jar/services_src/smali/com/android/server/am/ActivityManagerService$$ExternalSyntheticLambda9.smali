.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$2:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$2:Landroid/os/ParcelFileDescriptor;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$BSPNxwQnd8j3fjfyEg24cdXW1RI(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Landroid/os/ParcelFileDescriptor;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
