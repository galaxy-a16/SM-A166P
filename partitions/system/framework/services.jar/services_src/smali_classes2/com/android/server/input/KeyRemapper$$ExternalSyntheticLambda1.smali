.class public final synthetic Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyRemapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyRemapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyRemapper;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyRemapper;

    invoke-static {p0, p1}, Lcom/android/server/input/KeyRemapper;->$r8$lambda$G8RGWTs7w3_uK0OrBVOAAoPuFKI(Lcom/android/server/input/KeyRemapper;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
