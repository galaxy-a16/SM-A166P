.class public final synthetic Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$lambda$JnzEkVzvsCtVC9kNt3-4LGYppqo(Lcom/android/server/display/DisplayManagerService$BinderService;Ljava/lang/String;ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
