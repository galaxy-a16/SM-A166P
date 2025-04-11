.class public final synthetic Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    invoke-static {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->$r8$lambda$fRtyKbNG360BduqJYaR_GcNZ2Vg(Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;Landroid/os/UserHandle;)V

    return-void
.end method
