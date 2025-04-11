.class public interface abstract Lcom/samsung/android/server/corescpm/ScpmController;
.super Ljava/lang/Object;
.source "ScpmController.java"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method

.method public abstract registerScpm(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Set;Ljava/util/function/Consumer;Lcom/samsung/android/server/util/CoreLogger;)V
.end method
