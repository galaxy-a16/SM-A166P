.class public Lcom/android/server/policy/PhoneWindowManagerExt$3;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "PhoneWindowManagerExt.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mcheckAccessibilityShortcutVolupPowerTriggered(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method

.method public execute()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$minterceptAccessibilityShortcutVolupPowerChord(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method

.method public preCondition()Z
    .locals 0

    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result p0

    return p0
.end method
