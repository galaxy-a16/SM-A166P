.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/input/BatteryController$State;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/input/BatteryController$State;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/input/BatteryController$ListenerRecord;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/BatteryController;->$r8$lambda$n4twpQ6gWT20Ng1KtFcyFFVuzAQ(Lcom/android/server/input/BatteryController$State;Ljava/lang/Integer;Lcom/android/server/input/BatteryController$ListenerRecord;)V

    return-void
.end method
