.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$I9BEeJ6G4ZPGJDxB4hKGpxi92EI(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
