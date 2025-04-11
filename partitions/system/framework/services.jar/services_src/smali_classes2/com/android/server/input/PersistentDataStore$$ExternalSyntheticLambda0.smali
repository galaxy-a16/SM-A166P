.class public final synthetic Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->$r8$lambda$zeht5zIuGZa9ROCYAeWGIPte-_U(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;)V

    return-void
.end method
