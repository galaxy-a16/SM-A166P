.class public interface abstract Lcom/android/server/companion/AssociationStore;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# virtual methods
.method public abstract getAssociationById(I)Landroid/companion/AssociationInfo;
.end method

.method public abstract getAssociations()Ljava/util/Collection;
.end method

.method public abstract getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;
.end method

.method public abstract registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
.end method
