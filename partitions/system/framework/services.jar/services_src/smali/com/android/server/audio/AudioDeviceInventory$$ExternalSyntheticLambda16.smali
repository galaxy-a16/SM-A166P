.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->$r8$lambda$R0R_YnJHoOeO-3Mw0t35tzPXhYI(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V

    return-void
.end method
