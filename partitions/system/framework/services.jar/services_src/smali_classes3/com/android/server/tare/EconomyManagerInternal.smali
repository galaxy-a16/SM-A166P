.class public interface abstract Lcom/android/server/tare/EconomyManagerInternal;
.super Ljava/lang/Object;
.source "EconomyManagerInternal.java"


# virtual methods
.method public abstract canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
.end method

.method public abstract getEnabledMode(I)I
.end method

.method public abstract getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J
.end method

.method public abstract noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
.end method

.method public abstract registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;I)V
.end method

.method public abstract unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
.end method
