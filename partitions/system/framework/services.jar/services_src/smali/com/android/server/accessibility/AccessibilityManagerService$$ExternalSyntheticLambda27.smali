.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$uJ3yWK5v4uYx9heU1lOp2XC7RWs(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
