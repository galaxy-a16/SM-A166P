.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/util/SparseArray;

    check-cast p1, Landroid/content/pm/UserPackage;

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->$r8$lambda$HXCOpCMCOw8I0gZ0GbVGBEyyPu0(Landroid/util/SparseArray;Landroid/content/pm/UserPackage;)V

    return-void
.end method
