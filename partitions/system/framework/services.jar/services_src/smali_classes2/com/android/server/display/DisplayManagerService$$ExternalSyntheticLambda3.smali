.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Display$Mode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$0:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$0:Landroid/view/Display$Mode;

    check-cast p1, Lcom/android/server/display/DisplayDevice;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$WE9lWggi7axUVAr3OhQvz2zAQ4w(Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method
